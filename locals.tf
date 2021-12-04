locals {
  secrets = {
    for key, value in var.secrets :
    key => value
  }
  env_secrets = flatten([
    for environment, secrets in var.environment_secrets : [
      for secret, definition in secrets : {
        "id"          = "${environment}_${secret}"
        "environment" = environment
        "definition"  = definition
      }
    ]
  ])
}
