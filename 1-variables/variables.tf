variable "rg_nombre" {
    description = "Nombre del grupo de recursos"
    type = string
    default = "GrupoAdmin"
}

variable "subscription_id" {
    description = "ID de la suscripción de Azure"
    type = string
    # no tiene default porque se debe definir en terraform.tfvars
}