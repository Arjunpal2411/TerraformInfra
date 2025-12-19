resource "azurerm_subnet" "subnet_AJ1" {
  for_each             = var.subnet_AJ1
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.azure_virtual_network
  address_prefixes     = each.value.address_prefixes
}
