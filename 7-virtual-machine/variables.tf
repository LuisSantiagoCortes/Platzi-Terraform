variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
  # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}

variable "location" {
  description = "Ubicación de los recursos de Azure"
  type        = string
  default     = "eastus2"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos de Azure"
  type        = string
  default     = "academiaplatziterraform"
}

variable "vm_username" {
  description = "Nombre de usuario para la máquina virtual"
  type        = string
  # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}

variable "vm_password" {
  description = "Contraseña para la máquina virtual"
  type        = string
  # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}
