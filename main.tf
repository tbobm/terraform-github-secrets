resource "github_actions_secret" "this" {
  for_each = local.secrets

  repository      = data.github_repository.this.name
  secret_name     = each.value.name
  plaintext_value = each.value.plaintext
}
