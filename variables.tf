variable "repository" {
  type        = string
  description = "The full name of the repository in the form org/repo"
}

variable "secrets" {
  type        = map(any)
  description = "A map of secret definitions"
  default     = {}
}

variable "environment_secrets" {
  type        = map(any)
  description = "A map of environment-scoped secrets"
  default     = {}
}
