output "ns_group_id" {
  description = "ID del grupo de seguridad de red creado"
  value       = azurerm_network_security_group.main.id
  
}