module "cluster" {
  source       = "./modules/cluster"
  cluster_name = var.cluster_name
}

module "cert_manager" {
  source          = "./modules/cert-manager"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "sealed_secrets" {
  source          = "./modules/sealed-secrets"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "ingress" {
  source          = "./modules/ingress"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "linkerd" {
  source          = "./modules/linkerd"
  kubeconfig_path = module.cluster.kubeconfig_path
  cluster_name    = var.cluster_name
}

module "flagger" {
  source          = "./modules/flagger"
  kubeconfig_path = module.cluster.kubeconfig_path
  depends_on      = [module.linkerd, module.monitoring]
}

module "monitoring" {
  source          = "./modules/monitoring"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "loki" {
  source          = "./modules/loki"
  kubeconfig_path = module.cluster.kubeconfig_path
  depends_on      = [module.monitoring]
}

module "gatekeeper" {
  source          = "./modules/gatekeeper"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "chaos_mesh" {
  source          = "./modules/chaos-mesh"
  kubeconfig_path = module.cluster.kubeconfig_path
}

module "gitops" {
  source          = "./modules/gitops"
  kubeconfig_path = module.cluster.kubeconfig_path
  repo_url        = var.repo_url
  # Bootstrap Flux last — once it starts, it will apply everything from Git
  depends_on = [
    module.cert_manager,
    module.sealed_secrets,
    module.ingress,
    module.linkerd,
    module.monitoring,
    module.gatekeeper,
  ]
}