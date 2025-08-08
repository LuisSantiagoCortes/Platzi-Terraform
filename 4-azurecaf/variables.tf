variable "subscription_id" {
    description = "ID de la suscripción de Azure"
    type = string
    # no tiene default porque se debe definir en terraform.tfvars y el archivo se ignora en el control de versiones
}