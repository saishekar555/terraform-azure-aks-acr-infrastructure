resource "azurerm_storage_account" "tfstate" {
  name                = "tfstate12345shekar"
  resource_group_name = module.resource_group.resource_group_name
  location            = "Central India"

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}