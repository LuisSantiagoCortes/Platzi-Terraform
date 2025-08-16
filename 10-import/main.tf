resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

# si existe el recurso en azure, debe de importarse a terraform
# terraform import azurerm_storage_account.main /subscriptions/xxxx/resourceGroups/xxxx/providers/M
import {
  to = azurerm_storage_account.main
  id = "/subscriptions/${var.subscription_id}/resourceGroups/${var.resource_group_name}/providers/Microsoft.Storage/storageAccounts/platzi${var.resource_group_name}"
}

resource "azurerm_storage_account" "main" {
  name                     = "platzi${var.resource_group_name}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}