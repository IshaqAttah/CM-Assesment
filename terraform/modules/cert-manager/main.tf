resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  version          = "v1.14.0"
  namespace        = "cert-manager"
  create_namespace = true
  set {
    name  = "installCRDs"
    value = "true"
  }
}

resource "null_resource" "selfsigned_issuer" {
  provisioner "local-exec" {
    environment = {
      KUBECONFIG = var.kubeconfig_path
    }
    command = <<-EOT
      kubectl wait --for=condition=Available deployment/cert-manager -n cert-manager --timeout=120s
      kubectl apply -f - <<EOF
      apiVersion: cert-manager.io/v1
      kind: ClusterIssuer
      metadata:
        name: selfsigned-issuer
      spec:
        selfSigned: {}
      EOF
    EOT
  }

  depends_on = [helm_release.cert_manager]
}
