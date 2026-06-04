module "cluster" {
  source       = "./modules/cluster"
  cluster_name = var.cluster_name
}

module "gitops" {
  source          = "./modules/gitops"
  kubeconfig_path = module.cluster.kubeconfig_path
  repo_url        = var.repo_url
  depends_on      = [module.cluster]
}