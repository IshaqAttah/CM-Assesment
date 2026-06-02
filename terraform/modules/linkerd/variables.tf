variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
}

variable "cluster_name" {
  description = "Name of the kind cluster — used as a trigger to re-run on cluster recreation"
  type        = string
}