output "kubeconfig_path" {
  description = "Path to the kubeconfig file for the created cluster"
  value       = module.cluster.kubeconfig_path
}

output "cluster_name" {
  description = "Name of the created kind cluster"
  value       = module.cluster.cluster_name
}