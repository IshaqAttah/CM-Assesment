resource "null_resource" "linkerd_install" {
  triggers = {
    cluster_name = var.cluster_name
  }

  provisioner "local-exec" {
    environment = {
      KUBECONFIG = var.kubeconfig_path
    }
    command = <<-EOT
      linkerd install --crds | kubectl apply -f -
      linkerd install | kubectl apply -f -
      linkerd check
    EOT
  }
}