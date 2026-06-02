resource "helm_release" "sealed_secrets" {
  name       = "sealed-secrets"
  repository = "https://bitnami-labs.github.io/sealed-secrets"
  chart      = "sealed-secrets"
  version    = "2.15.0"
  namespace  = "kube-system"
}