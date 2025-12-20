resource_group = {
  rg1 = {
    rg_name  = "rgsean"
    location = "Canada Central"
  }
}

azurerm_storage_account = {
  stg1 = {
    name                     = "rapstg2411"
    resource_group_name      = "rgsean"
    location                 = "Canada Central"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

container = {
  cont = {
    name                  = "apstgcont01"
    container_access_type = "private"
} }


vnet_details = {
  vnet = {
    name                = "AJ_VNET1"
    resource_group_name = "rgsean"
    location            = "Canada Central"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_AJ1 = {
  subnet1 = {
    name                  = "AJ_Subnet1"
    resource_group_name   = "rgsean"
    azure_virtual_network = "AJ_VNET1"
    address_prefixes      = ["10.0.1.0/24"]
  }
}

azurerm_NIC = {
  nic1 = {
    name                = "AJ_NIC1"
    location            = "Canada Central"
    resource_group_name = "rgsean"
    ip_config_name      = "AJ_IPConfig1"
  }
}

vm_details = {
  vm1 = {
    name                = "AJVM2411"
    location            = "Canada Central"
    resource_group_name = "rgsean"
    size                = "Standard_D2ls_v5"
    admin_username      = "azureuser"
    admin_password      = "Password1234!"
  }
}


# kvsec_details = {
#   key_vault = {

#   }
# }


