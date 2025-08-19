resource "azurerm_resource_group" "main" {
  name     = "rg-platzi-azure-funtions-module"
  location = "eastus2"
}

module "azurefunctions" {
  source  = "LuisSantiagoCortes/azurefunctions/azurerm"
  version = "1.0.2"
  rg_name                   = azurerm_resource_group.main.name
  rg_location               = azurerm_resource_group.main.location
  storage_account_name      = "functionsapptestsanti"
  service_name              = "azure-functions-test-service-plan"
  function_name             = "santiago-azure-functions"
  storage_account_tier      = "Standard"
  storage_replication_type  = "LRS"
  service_plan_os_type      = "Linux"
  service_plan_sku          = "B1"
}
