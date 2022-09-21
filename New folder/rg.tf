resource "azurerm_resource_group" "rg" {
name = "terraformrg"
location = "eastus"
tags =  {
           "evn" = "dev"
}
}