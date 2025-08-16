resource "azurecaf_name" "rg_name" {
  name = "myResourceGroup"
  resource_type = "azurerm_resource_group"
  prefixes = ["dev"]
  suffixes = ["y", "z"]
  random_length = 3
  clean_input = true
}

resource "azurerm_resource_group" "main" {
  name     = azurecaf_name.rg_name.result
  location = "East US"
}

resource "azurecaf_name" "storage_account_name" {
  name = "mystorageaccount"
  resource_type = "azurerm_storage_account"
  prefixes = ["dev"]
  random_length = 3
  clean_input = true
}

resource "azurerm_storage_account" "main" {
  name                     = azurecaf_name.storage_account_name.result
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  public_network_access_enabled = false

  tags = {
    environment = "staging"
  }
}