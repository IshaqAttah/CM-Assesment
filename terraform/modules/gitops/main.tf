  resource "helm_release" "flux" {
    name             = "flux2"
    repository       = "https://fluxcd-community.github.io/helm-charts"
    chart            = "flux2"  
    version          = "2.12.0"
    namespace        = "flux-system"
    create_namespace = true
  }
  
  resource "null_resource" "flux_bootstrap" {
    provisioner "local-exec" {
      environment = {
        KUBECONFIG = var.kubeconfig_path
      }
      command = <<-EOT
        kubectl wait --for=condition=Available deployment/helm-controller \
          -n flux-system --timeout=120s
        kubectl apply -f - <<EOF
        apiVersion: source.toolkit.fluxcd.io/v1
        kind: GitRepository
        metadata:
          name: user-app-repo
          namespace: flux-system
        spec:
          interval: 1m
          url: ${var.repo_url}
          ref:
            branch: main
        EOF
        kubectl apply -f - <<EOF
        apiVersion: kustomize.toolkit.fluxcd.io/v1
        kind: Kustomization
        metadata:
          name: flux-system
          namespace: flux-system
        spec:
          interval: 10m
          path: ./flux
          prune: true
          sourceRef:
            kind: GitRepository
            name: user-app-repo                              
        EOF
      EOT
    }

    depends_on = [helm_release.flux]
  }
