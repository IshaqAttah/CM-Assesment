FROM golang:1.26.4-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o app .
FROM gcr.io/distroless/static:nonroot
WORKDIR /app
COPY --from=builder --chown=65532:65532 /app/app .
EXPOSE 8080
USER 65532:65532
CMD ["/app/app"]