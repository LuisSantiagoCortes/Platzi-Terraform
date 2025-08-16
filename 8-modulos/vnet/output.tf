output "subnet_id" {
  description = "ID de la subred creada"
  value       = azurerm_subnet.main.id
  
}

output "public_ip_id" {
  description = "ID de la IP pública creada"
  value       = azurerm_public_ip.main.id
}