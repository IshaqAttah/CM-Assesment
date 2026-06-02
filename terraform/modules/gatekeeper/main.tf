resource "helm_release" "gatekeeper" {
  name             = "gatekeeper"
  repository       = "https://open-policy-agent.github.io/gatekeeper/charts"
  chart            = "gatekeeper"
  version          = "3.16.0"
  namespace        = "gatekeeper-system"
  create_namespace = true
  set { name = "auditInterval"; value = "30" }
}