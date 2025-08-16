variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
  # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}

variable "sas_token" {
  description = "SAS token para acceder al contenedor de almacenamiento de Terraform"
  type        = string
  # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}