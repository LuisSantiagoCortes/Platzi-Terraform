resource "azurerm_network_interface" "main" {
  name                = "nic-${var.resource_group_name}"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig-${var.resource_group_name}"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip_id
  }
}

resource "azurerm_network_interface_security_group_association" "main" {
  network_interface_id      = azurerm_network_interface.main.id
  network_security_group_id = var.ns_group_id
}

resource "azurerm_linux_virtual_machine" "main" {
  name                  = "vm-${var.resource_group_name}"
  admin_username        = var.vm_username
  admin_password        = var.vm_password
  disable_password_authentication = false
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.main.id]
  size                  = "Standard_DS1_v2"

  os_disk {
    name                 = "osdisk-${var.resource_group_name}"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}