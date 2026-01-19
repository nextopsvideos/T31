variable "rg_name" {
    type        = string
    description = "Variable to store resource group name as value"
}

variable "rg_location" {
    type        = string
    description = "Variable to store resource group location as value" 
}

variable "acr_name" {
    type        = string
}

variable "acr_sku" {
    type        = string
}

variable "aks_name" {
    type        = string
}

variable "aks_node_count" {
    type        = number
}

variable "aks_env" {
    type        = string
}   