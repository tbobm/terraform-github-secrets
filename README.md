# terraform-github-secrets

[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/terraform-github-secrets)
[![terraform-github-secrets](https://github.com/tbobm/terraform-github-secrets/workflows/terraform-github-secrets/badge.svg)](https://github.com/tbobm/terraform-github-secrets/actions?query=workflow%3Aterraform-github-secrets)

## Doc generation

Code formatting and documentation for variables and outputs is generated using
[pre-commit-terraform
hooks](https://github.com/antonbabenko/pre-commit-terraform) which uses
[terraform-docs](https://github.com/segmentio/terraform-docs).

Follow [these
instructions](https://github.com/antonbabenko/pre-commit-terraform#how-to-install)
to install pre-commit locally.

And install `terraform-docs` with `go get github.com/segmentio/terraform-docs`
or `brew install terraform-docs`.

## Contributing

Report issues/questions/feature requests on in the
[issues](https://github.com/tbobm/terraform-github-secrets/issues/new)
section.

Full contributing [guidelines are covered
here](https://github.com/tbobm/terraform-github-secrets/blob/master/.github/CONTRIBUTING.md).

## Usage

### Github Authentication

You will need to authenticate against Github using an OAuth Token or Personal Access Token.
See [Github Provider#Authentication][tf-gh-auth] for more informations.

This can be done by setting the `token` argument of the `github` provider or by exporting
your Token to the `GITHUB_TOKEN` environment variable.

_Provider configuration:_
```hcl
provider "github" {
  token = var.token # or `GITHUB_TOKEN`
}
```

_Environment variable configuration:_
```bash
export GITHUB_TOKEN=ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

[tf-gh-auth]: https://registry.terraform.io/providers/integrations/github/latest/docs#authentication

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_repository.repo](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository"></a> [repository](#input\_repository) | The full name of the repository in the form org/repo | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
