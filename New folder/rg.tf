resource "azurerm_resource_group" "rg" {
name = "terraformrg"
location = "eastus"
tags =  {
           "evn" = "dev"
}
}
resource "azurerm_virtual_network" "vnet" {
  name                = "example-network"
  location            = azurerm_resource_group.rg.lcation
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = 10.0.0.0/16
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24
  }

}
resource "azurerm_public_ip" "public" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
