resource "helm_release" "nginx_ingress" {
    name             = "ingress-nginx"
    repository       = "https://kubernetes.github.io/ingress-nginx"
    chart            = "ingress-nginx"
    version          = "4.9.0"
    namespace        = "ingress-nginx"
    create_namespace = true

    set {
      name  = "controller.service.type"
      value = "NodePort"
    }
    
    set {
      name  = "controller.podAnnotations.linkerd\\.io/inject"
      value = "enabled"
    }
  }