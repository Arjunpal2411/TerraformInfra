resource "azurerm_network_interface" "AJ_NIC" {
  for_each            = var.azurerm_NIC
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "arjun_ip_config"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
