module "resource_group" {
  source = "../../modules/rg"

  resource_group_name = "dev-rg"
  location            = "Central India"
}

module "network" {
  source = "../../modules/network"

  vnet_name     = "dev-vnet"
  address_space = ["10.10.0.0/16"]

  subnet_name     = "dev-subnet"
  subnet_prefixes = ["10.10.1.0/24"]

  resource_group_name = module.resource_group.resource_group_name
  location            = "Central India"
}

module "acr" {
  source = "../../modules/acr"

  acr_name = "devacr12345"

  resource_group_name = module.resource_group.resource_group_name
  location            = "Central India"

  sku           = "Basic"
  admin_enabled = true
}

module "aks" {
  source = "../../modules/aks"

  aks_name            = "dev-aks"
  location            = "Central India"
  resource_group_name = module.resource_group.resource_group_name
  subnet_id           = module.network.subnet_id

  dns_prefix = "devaks"

  node_count = 1
  vm_size    = "Standard_B2s_v2"
}