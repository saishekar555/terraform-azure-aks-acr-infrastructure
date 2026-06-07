terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-rg-demo"
    storage_account_name = "tfstate12345shekar"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}