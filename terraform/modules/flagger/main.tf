resource "helm_release" "flagger" {
  name             = "flagger"
  repository       = "https://flagger.app"
  chart            = "flagger"
  version          = "1.37.0"
  namespace        = "linkerd"
  create_namespace = false

  set {
    name  = "meshProvider"
    value = "linkerd"
  }

  # Tell Flagger where Prometheus is so it can query metrics.
  set {
    name  = "metricsServer"
    value = "http://prometheus-stack-kube-prom-prometheus.monitoring:9090"
  }
}