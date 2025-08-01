output "rg_name" {
    value = azurerm_resource_group.main.name
}

output "storage_account_name" {
    value = azurerm_storage_account.main.name
}

output "storage_account_primary_connection_string" {
    value = azurerm_storage_account.main.primary_connection_string
    sensitive = true # Esta salida contiene información sensible, como la cadena de conexión
}