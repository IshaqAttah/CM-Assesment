terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "~> 0.4"
    }
  }
}

resource "null_resource" "linkerd_install" {
  triggers = {
    cluster_name = var.cluster_name
  }

  provisioner "local-exec" {
    environment = {
      KUBECONFIG = var.kubeconfig_path
    }

    command = <<-EOT
      kubectl apply --server-side -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.2.1/standard-install.yaml && \
      kubectl wait --for=condition=Established crd/gateways.gateway.networking.k8s.io --timeout=60s && \
      linkerd install --crds | kubectl apply -f - && \
      linkerd install | kubectl apply -f - && \
      linkerd check
    EOT
  }
}