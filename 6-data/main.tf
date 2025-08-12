data "azurerm_resource_group" "main" {
  name = "prueba_curso_udemy"
}

resource "azurerm_storage_account" "main" {
  name                     = "stplatziterraform2024"
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}