locals {
    group_name = "locals-${var.resource_group_name}"
}

resource "azurerm_resource_group" "main" {
  name     = local.group_name
  location = var.location
}
