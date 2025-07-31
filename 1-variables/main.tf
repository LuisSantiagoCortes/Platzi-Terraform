resource "azurerm_resource_group" "main" {
  name     = var.rg_nombre
  location = "East US"
}