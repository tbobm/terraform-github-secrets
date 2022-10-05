# Encrypted Github Environment Secrets usage

Configure an encrypted Github Repository Secret.

```hcl
module "secrets" {
  source = "../../"

  repository = "terraform-github-secrets"

  secrets = {
    top_secret = {
      name      = "SECRET_PASSWORD"
      encrypted = base64encode("hello-world")
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
| <a name="module_secrets"></a> [secrets](#module\_secrets) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
