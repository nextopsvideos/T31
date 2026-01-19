variable "rg_name" {
  type = string 
}

variable "rg_location" {
  type = string
}

variable "vnet_name" {
  type = string  
}

variable "address_space" {
  type = list(string)
}

variable "subnet1_name" {
  type = string  
}

variable "s1_address_prefix" {
  type = list(string)
}