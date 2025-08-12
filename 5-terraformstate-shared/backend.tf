terraform {
  backend "azurerm" {
    storage_account_name = "stterraformstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    sas_token            = var.sas_token
  }
}