provider "azurerm" {
  features {}

   version = "=3.0.0"
 
}


terraform {
  backend "azurerm" {
    storage_account_name = "sangamrg8ce4"
    container_name       = "container4"
    key                  = "prod.terraform.tfstate"
    access_key = "z+pI07poI/4mz5xrYdNue3RWya2bRMcdD3S/e5o8C8GLAMrFgwp2CwMTNKZVY8DqiLUBIHBwsz3X+ASt6fVG5Q=="
  }
}