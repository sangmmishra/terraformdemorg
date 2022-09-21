resource "azurerm_resource_group" "rg" {
name = "terraformrg"
location = "eastus"
tags =  {
           "evn" = "dev"
}
}

resource "azurerm_virtual_network" "vnet" {
name = "ventrg"
location = azurerm_resource_group.rg.lcation
resource_group_name = azurerm_resource_group.rg.name
adress_space = 10.0.0.0/16

subnet {
name = "subnet1"
adress_prefix = "10.0.1.0/24"
}
}