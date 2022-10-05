# Basic Github Environment Secrets usage

Configure Github Repository Secrets and Github Actions Environment Secrets.

```hcl
module "secrets" {
  source  = "tbobm/secrets/github"
  version = "1.1.0"

  repository = "tbobm/terraform-github-secrets"

  # common secrets
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

  # environment secrets
  environment_secrets = {
    "${module.env.environments.production.environment}" = {
      ssh_username = {
        name      = "SSH_USERNAME"
        plaintext = "sampleuser"
      }
      ssh_password = {
        name      = "SSH_PASSWORD"
        plaintext = "samplepass"
      }
    }
    "${module.env.environments.staging.environment}" = {
      ssh_username = {
        name      = "SSH_USERNAME"
        plaintext = "staging_user"
      }
      ssh_password = {
        name      = "SSH_PASSWORD"
        plaintext = "staging_password"
      }
    }
  }
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_env"></a> [env](#module\_env) | tbobm/environments/github | 1.0.0 |
| <a name="module_secrets"></a> [secrets](#module\_secrets) | tbobm/secrets/github | 1.1.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
