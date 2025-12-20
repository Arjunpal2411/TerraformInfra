module "resource_group" {
  source         = "../Module/Azurerm_rg"
  resource_group = var.resource_group
}

module "azurerm_storage_account" {
  depends_on              = [module.resource_group]
  source                  = "../Module/Azurerm_storage_account"
  azurerm_storage_account = var.azurerm_storage_account
}

module "container" {
  depends_on         = [module.azurerm_storage_account]
  source             = "../Module/Container"
  container          = var.container
  storage_account_id = module.azurerm_storage_account.storage_account_id["stg1"]
}

module "azure_virtual_network" {
  depends_on = [module.resource_group]
  source     = "../Module/Azure_VNET"
  vnet       = var.vnet_details
}

module "subnet_AJ1" {
  depends_on = [module.azure_virtual_network]
  source     = "../Module/Subnet"
  subnet_AJ1 = var.subnet_AJ1
}

module "AJ_NIC" {
  depends_on  = [module.subnet_AJ1]
  source      = "../Module/NIC"
  azurerm_NIC = var.azurerm_NIC
  subnet_id   = module.subnet_AJ1.subnet_id["subnet1"]
}

module "virtual_machine" {
  depends_on           = [module.AJ_NIC]
  source               = "../Module/Virtual_Machine"
  AJ_VM01              = var.vm_details
  network_interface_id = module.AJ_NIC.network_interface_id["nic1"]
}

# module "key_vault_secret" {
#   source = "../Module/key_vault_secret"
#   key_vault_secret = var.kvsec_details
# }

