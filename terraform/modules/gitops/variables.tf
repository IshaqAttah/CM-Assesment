variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  type        = string
}

variable "repo_url" {
  description = "URL of the Git repository for Flux to watch"
  type        = string
}