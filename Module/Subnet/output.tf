output "subnet_id" {
  value = {
    for key, subnet in azurerm_subnet.subnet_AJ1 :
    key => subnet.id
  }
}
