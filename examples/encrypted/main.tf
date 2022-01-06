module "secrets" {
  # source  = "tbobm/secrets/github"
  # version = "1.1.3"
  source = "../../"

  repository = "terraform-github-secrets"

  secrets = {
    top_secret = {
      name      = "SECRET_PASSWORD"
      encrypted = base64encode("hello-world")
    }
  }
}
