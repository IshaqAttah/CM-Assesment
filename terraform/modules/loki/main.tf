resource "helm_release" "loki_stack" {
  name             = "loki"
  repository       = "https://grafana.github.io/helm-charts"
  chart            = "loki-stack"
  version          = "2.10.2"
  namespace        = "monitoring"
  create_namespace = false

  set { name = "loki.enabled";     value = "true" }
  set { name = "promtail.enabled"; value = "true" }
  set { name = "grafana.enabled";  value = "false" }
}