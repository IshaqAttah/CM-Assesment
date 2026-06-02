resource "helm_release" "chaos_mesh" {
  name             = "chaos-mesh"
  repository       = "https://charts.chaos-mesh.org"
  chart            = "chaos-mesh"
  version          = "2.6.2"
  namespace        = "chaos-testing"
  create_namespace = true


    set {
    name  = "chaosDaemon.runtime"
    value = "containerd"
  }
  set {
    name  = "chaosDaemon.socketPath"                         
    value = "/run/containerd/containerd.sock"
  }
}