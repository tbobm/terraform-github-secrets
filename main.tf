resource "github_actions_secret" "this" {
  for_each = local.secrets

  repository      = var.repository
  secret_name     = each.value.name
  plaintext_value = each.value.plaintext
}

resource "github_actions_environment_secret" "this" {
  for_each = {
    for elem in local.env_secrets :
    elem.id => elem
  }

  repository      = var.repository
  secret_name     = each.value.definition.name
  environment     = each.value.environment
  plaintext_value = each.value.definition.plaintext
}
