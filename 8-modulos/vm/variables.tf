variable "location" {
  description = "Ubicación de los recursos de Azure"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos de Azure"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred donde se desplegará la máquina virtual"
  type        = string
}

variable "public_ip_id" {
  description = "ID de la IP pública asociada a la máquina virtual"
  type        = string
}

variable "ns_group_id" {
  description = "ID del grupo de seguridad de red asociado a la máquina virtual"
  type        = string
}

variable "vm_username" {
  description = "Nombre de usuario para la máquina virtual"
  type        = string
}

variable "vm_password" {
  description = "Contraseña para la máquina virtual"
  type        = string
}