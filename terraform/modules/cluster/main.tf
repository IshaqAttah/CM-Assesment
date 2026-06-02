resource "kind_cluster" "this" {
  name = var.cluster_name

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role  = "control-plane"
      image = "kindest/node:v1.31.0"

      kubeadm_config_patches = [
        yamlencode({
          kind = "InitConfiguration"
          nodeRegistration = {
            kubeletExtraArgs = {
              "node-labels" = "ingress-ready=true"
            }
          }
        })
      ]

      extra_port_mappings {
        container_port = 80
        host_port      = 80
        protocol       = "TCP"
      }
      extra_port_mappings {
        container_port = 443
        host_port      = 443
        protocol       = "TCP"
      }
    }


    node {
      role  = "worker"
      image = "kindest/node:v1.31.0"
    }
  }
}


resource "kubernetes_manifest" "storage_class" {
  manifest = {
    apiVersion = "storage.k8s.io/v1"
    kind       = "StorageClass"
    metadata = {
      name = "local-path"
      annotations = {
        "storageclass.kubernetes.io/is-default-class" = "true"
      }
    }
    provisioner       = "rancher.io/local-path"
    volumeBindingMode = "WaitForFirstConsumer"
    reclaimPolicy     = "Delete"
  }
  depends_on = [kind_cluster.this]
}

output "kubeconfig_path" {
  value = kind_cluster.this.kubeconfig_path
}

output "cluster_name" {
  value = kind_cluster.this.name
}