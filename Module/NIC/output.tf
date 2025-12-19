output "network_interface_id" {
  value = {
    for key, nic in azurerm_network_interface.AJ_NIC :
    key => nic.id
  }
}
