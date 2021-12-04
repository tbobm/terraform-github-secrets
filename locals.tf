locals {
  secrets = {
    for key, value in var.secrets :
    key => value
  }
}
