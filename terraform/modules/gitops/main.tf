 resource "helm_release" "flux" {                           
    name             = "flux2"
    repository       = "https://fluxcd-community.github.io/helm-charts"
    chart            = "flux2"
    version          = "2.12.0"
    namespace        = "flux-system"
    create_namespace = true                                  
  }

  resource "kubernetes_manifest" "git_repository" {
    manifest = {
      apiVersion = "source.toolkit.fluxcd.io/v1"
      kind       = "GitRepository"                           
      metadata = {
        name      = "user-app-repo"
        namespace = "flux-system"
      }
      spec = {
        interval = "1m"
        url      = var.repo_url                              
        ref      = { branch = "main" }
      }
    }
    depends_on = [helm_release.flux]
  }

  resource "kubernetes_manifest" "root_kustomization" {
    manifest = {
      apiVersion = "kustomize.toolkit.fluxcd.io/v1"          
      kind       = "Kustomization"
      metadata = {
        name      = "flux-system"
        namespace = "flux-system"
      }
      spec = {
        interval  = "10m"                                    
        path      = "./flux"
        prune     = true
        sourceRef = {
          kind = "GitRepository"
          name = "user-app-repo"
        }
      }
    }
    depends_on = [kubernetes_manifest.git_repository]
  }