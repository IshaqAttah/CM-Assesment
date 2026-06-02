resource "helm_release" "kube_prometheus_stack" {
  name             = "prometheus-stack"
  repository       = "https://prometheus-community.github.io/helm-charts"
  chart            = "kube-prometheus-stack"
  version          = "56.0.0"
  namespace        = "monitoring"
  create_namespace = true
  values           = [file("${path.module}/prometheus-values.yaml")]
  timeout          = 600
}