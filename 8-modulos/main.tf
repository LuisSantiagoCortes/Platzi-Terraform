resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "./vnet"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

module "nsg" {
  source              = "./nsg"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

module "vm" {
  source              = "./vm"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  subnet_id           = module.vnet.subnet_id
  public_ip_id        = module.vnet.public_ip_id
  ns_group_id         = module.nsg.ns_group_id
  vm_username         = var.vm_username
  vm_password         = var.vm_password
}
