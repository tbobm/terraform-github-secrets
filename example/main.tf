module "env" {
  source  = "tbobm/environments/github"
  version = "1.0.0"

  repository = "tbobm/terraform-github-secrets"

  environments = {
    "staging"    = {}
    "production" = {}
  }
}

module "secrets" {
  source = "../"

  repository = "tbobm/terraform-github-secrets"

  secrets = {
    deploy_key = {
      name      = "DEPLOY_KEY"
      plaintext = "ABCDEF"
    }
    registry_username = {
      name      = "DOCKERHUB_USERNAME"
      plaintext = "sampleuser"
    }
    registry_password = {
      name      = "DOCKERHUB_PASSWORD"
      plaintext = "samplepass"
    }
  }
  environment_secrets = {
    production = {
      ssh_username = {
        name      = "SSH_USERNAME"
        plaintext = "sampleuser"
      }
      ssh_password = {
        name      = "SSH_PASSWORD"
        plaintext = "samplepass"
      }
    }
  }
}
