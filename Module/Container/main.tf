resource "azurerm_storage_container" "APSTGCONT01" {
  for_each = var.container
  name     = each.value.name
  storage_account_id    = var.storage_account_id
  container_access_type = each.value.container_access_type
}


