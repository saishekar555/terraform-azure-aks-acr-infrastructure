terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/rg"

  resource_group_name = "terraform-rg-demo"
  location            = "Central India"
}

module "network" {
  source = "./modules/network"

  vnet_name     = "terraform-vnet"
  address_space = ["10.0.0.0/16"]

  subnet_name     = "aks-subnet"
  subnet_prefixes = ["10.0.1.0/24"]

  resource_group_name = module.resource_group.resource_group_name
  location            = "Central India"
}

module "acr" {
  source = "./modules/acr"

  acr_name            = "terraformacr12345"
  resource_group_name = module.resource_group.resource_group_name
  location            = "Central India"

  sku           = "Basic"
  admin_enabled = true
}

module "aks" {
  source = "./modules/aks"

  aks_name            = "terraform-aks"
  location            = "Central India"
  resource_group_name = module.resource_group.resource_group_name

  dns_prefix = "terraformaks"

  node_count = 1
  vm_size    = "Standard_B2s_v2"
}
