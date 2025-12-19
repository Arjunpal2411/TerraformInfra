# resource "key_vault_secret" "kvsec" {
#   for_each            = var.key_vault_secret
#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
# }
