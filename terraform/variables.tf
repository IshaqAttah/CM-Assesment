variable "cluster_name" {
  description = "Name of the kind cluster"
  type        = string
  default     = "user-app-dev"
}

variable "repo_url" {
  description = "URL of the Git repository for Flux to watch"
  type        = string
  default     = "https://github.com/IshaqAttah/CM-Assesment.git"
}