resource "azurerm_resource_group" "rg24" {
  for_each = var.resource_group
  name     = each.value.rg_name
  location = each.value.location
}
