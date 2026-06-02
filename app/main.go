package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/prometheus/client_golang/prometheus"
	"github.com/prometheus/client_golang/prometheus/promhttp"
)


var httpRequestsTotal = prometheus.NewCounterVec(
	prometheus.CounterOpts{Name: "http_requests_total", Help: "Total HTTP requests"},
	[]string{"method", "endpoint", "status"},
)
var httpRequestDuration = prometheus.NewHistogramVec(
	prometheus.HistogramOpts{Name: "http_request_duration_seconds", Help: "HTTP request duration", Buckets: prometheus.DefBuckets},
	[]string{"method", "endpoint"},
)
var usersTotal = prometheus.NewGauge(prometheus.GaugeOpts{
	Name: "users_total", Help: "Current number of users in the database",
})

func init() {
	prometheus.MustRegister(httpRequestsTotal, httpRequestDuration, usersTotal)
}

// ── Structured JSON logger ────────────────────────────────────────────────────
// log/slog (Go 1.21 stdlib) writes newline-delimited JSON to stdout.
// Promtail reads container logs from /var/log/containers/ on each node
// and ships them to Loki. Grafana queries Loki for log exploration.

var logger = slog.New(slog.NewJSONHandler(os.Stdout, &slog.HandlerOptions{
	Level: slog.LevelInfo,
}))

// ── Database pool (PostgreSQL via pgx) ───────────────────────────────────────

var pool *pgxpool.Pool

// ── Domain types ─────────────────────────────────────────────────────────────

type User struct {
	ID        int    `json:"id"`
	Username  string `json:"username"`
	Email     string `json:"email"`
	CreatedAt string `json:"created_at"`
}

// ── Middleware ────────────────────────────────────────────────────────────────

type responseWriter struct {
	http.ResponseWriter
	statusCode int
}

func (rw *responseWriter) WriteHeader(code int) {
	rw.statusCode = code
	rw.ResponseWriter.WriteHeader(code)
}

func withMetrics(next http.HandlerFunc, endpoint string) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		start := time.Now()
		rw := &responseWriter{ResponseWriter: w, statusCode: http.StatusOK}
		next(rw, r)
		duration := time.Since(start).Seconds()
		httpRequestsTotal.WithLabelValues(r.Method, endpoint, http.StatusText(rw.statusCode)).Inc()
		httpRequestDuration.WithLabelValues(r.Method, endpoint).Observe(duration)
		logger.Info("request",
			"method", r.Method,
			"path", r.URL.Path,
			"status", rw.statusCode,
			"duration_ms", duration*1000,
		)
	}
}

// ── Bootstrap ─────────────────────────────────────────────────────────────────

func main() {
	ctx := context.Background()

	dsn := fmt.Sprintf("postgres://%s:%s@%s:%s/%s",
		os.Getenv("DATABASE_USER"),
		os.Getenv("DATABASE_PASSWORD"),
		os.Getenv("DATABASE_HOST"),
		os.Getenv("DATABASE_PORT"),
		os.Getenv("DATABASE_NAME"),
	)

	var err error
	pool, err = pgxpool.New(ctx, dsn)
	if err != nil {
		logger.Error("database connection failed", "error", err)
		os.Exit(1)
	}
	defer pool.Close()

	// Create table on startup — idempotent, safe to run every boot
	_, err = pool.Exec(ctx, `
		CREATE TABLE IF NOT EXISTS users (
			id         SERIAL PRIMARY KEY,
			username   VARCHAR(50)  UNIQUE NOT NULL,
			email      VARCHAR(100) UNIQUE NOT NULL,
			created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
		)
	`)
	if err != nil {
		logger.Error("schema migration failed", "error", err)
		os.Exit(1)
	}
	logger.Info("database ready")

	mux := http.NewServeMux()
	mux.HandleFunc("/", withMetrics(handleRoot, "/"))
	mux.HandleFunc("/users", withMetrics(handleUsers, "/users"))
	mux.HandleFunc("/users/", withMetrics(handleUser, "/users/{id}"))
	mux.HandleFunc("/startup", handleStartup)
	mux.HandleFunc("/healthz", handleLiveness)
	mux.HandleFunc("/readyz", handleReadiness)
	mux.Handle("/metrics", promhttp.Handler())

	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	logger.Info("server starting", "port", port)
	if err := http.ListenAndServe(":"+port, mux); err != nil {
		logger.Error("server failed", "error", err)
		os.Exit(1)
	}
}

// ── Handlers ──────────────────────────────────────────────────────────────────

func handleRoot(w http.ResponseWriter, r *http.Request) {
	writeJSON(w, http.StatusOK, map[string]string{"service": "my-app", "status": "running"})
}

func handleUsers(w http.ResponseWriter, r *http.Request) {
	switch r.Method {
	case http.MethodGet:
		listUsers(w, r)
	case http.MethodPost:
		createUser(w, r)
	default:
		http.Error(w, "method not allowed", http.StatusMethodNotAllowed)
	}
}

func handleUser(w http.ResponseWriter, r *http.Request) {
	idStr := strings.TrimPrefix(r.URL.Path, "/users/")
	id, err := strconv.Atoi(idStr)
	if err != nil {
		http.Error(w, "invalid id", http.StatusBadRequest)
		return
	}
	switch r.Method {
	case http.MethodGet:
		getUser(w, r, id)
	case http.MethodDelete:
		deleteUser(w, r, id)
	default:
		http.Error(w, "method not allowed", http.StatusMethodNotAllowed)
	}
}

func listUsers(w http.ResponseWriter, r *http.Request) {
	rows, err := pool.Query(r.Context(), "SELECT id, username, email, created_at FROM users ORDER BY id")
	if err != nil {
		logger.Error("list users query failed", "error", err)
		http.Error(w, "internal error", http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	var users []User
	for rows.Next() {
		var u User
		var createdAt time.Time
		if err := rows.Scan(&u.ID, &u.Username, &u.Email, &createdAt); err != nil {
			continue
		}
		u.CreatedAt = createdAt.Format(time.RFC3339)
		users = append(users, u)
	}
	usersTotal.Set(float64(len(users)))
	logger.Info("users listed", "count", len(users))
	writeJSON(w, http.StatusOK, map[string]any{"users": users})
}

func createUser(w http.ResponseWriter, r *http.Request) {
	var input struct {
		Username string `json:"username"`
		Email    string `json:"email"`
	}
	if err := json.NewDecoder(r.Body).Decode(&input); err != nil || input.Username == "" || input.Email == "" {
		http.Error(w, "username and email required", http.StatusBadRequest)
		return
	}
	var u User
	var createdAt time.Time
	err := pool.QueryRow(r.Context(),
		"INSERT INTO users (username, email) VALUES ($1, $2) RETURNING id, username, email, created_at",
		input.Username, input.Email,
	).Scan(&u.ID, &u.Username, &u.Email, &createdAt)
	if err != nil {
		logger.Error("create user failed", "error", err, "username", input.Username)
		http.Error(w, "could not create user (duplicate username or email?)", http.StatusConflict)
		return
	}
	u.CreatedAt = createdAt.Format(time.RFC3339)
	logger.Info("user created", "user_id", u.ID, "username", u.Username)
	writeJSON(w, http.StatusCreated, u)
}

func getUser(w http.ResponseWriter, r *http.Request, id int) {
	var u User
	var createdAt time.Time
	err := pool.QueryRow(r.Context(),
		"SELECT id, username, email, created_at FROM users WHERE id = $1", id,
	).Scan(&u.ID, &u.Username, &u.Email, &createdAt)
	if err != nil {
		logger.Warn("user not found", "user_id", id)
		http.Error(w, "not found", http.StatusNotFound)
		return
	}
	u.CreatedAt = createdAt.Format(time.RFC3339)
	writeJSON(w, http.StatusOK, u)
}

func deleteUser(w http.ResponseWriter, r *http.Request, id int) {
	tag, err := pool.Exec(r.Context(), "DELETE FROM users WHERE id = $1", id)
	if err != nil || tag.RowsAffected() == 0 {
		logger.Warn("delete: user not found", "user_id", id)
		http.Error(w, "not found", http.StatusNotFound)
		return
	}
	logger.Info("user deleted", "user_id", id)
	w.WriteHeader(http.StatusNoContent)
}

// handleReadiness checks the database connection — if the DB is unreachable,
// this pod is removed from the Service's endpoint list (not restarted).
func handleReadiness(w http.ResponseWriter, r *http.Request) {
	if err := pool.Ping(r.Context()); err != nil {
		logger.Warn("readiness: database unreachable", "error", err)
		http.Error(w, "database unreachable", http.StatusServiceUnavailable)
		return
	}
	writeJSON(w, http.StatusOK, map[string]string{"status": "ready"})
}

func handleStartup(w http.ResponseWriter, r *http.Request) {
	writeJSON(w, http.StatusOK, map[string]string{"status": "started"})
}

func handleLiveness(w http.ResponseWriter, r *http.Request) {
	writeJSON(w, http.StatusOK, map[string]string{"status": "healthy"})
}

func writeJSON(w http.ResponseWriter, status int, v any) {
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(status)
	json.NewEncoder(w).Encode(v)
}
