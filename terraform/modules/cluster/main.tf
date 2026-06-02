  terraform {
    required_providers {
      kind = {
        source  = "tehcyx/kind" 
        version = "~> 0.4"
      }
    }
  }

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

output "kubeconfig_path" {
  value = kind_cluster.this.kubeconfig_path
}

output "cluster_name" {
  value = kind_cluster.this.name
}