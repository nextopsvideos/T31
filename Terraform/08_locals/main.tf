locals {
  prefix            = "nextops"
  rg_name_ref       = azurerm_resource_group.rg1.name
  rg_location_ref   = azurerm_resource_group.rg1.location
  vnet_name_ref     = azurerm_virtual_network.vnet.name
}   

resource "azurerm_resource_group" "rg1" {
   name     = join("-", [local.prefix,var.rg_name])          #LocalsRG ---> nextops-localsrg
   location = var.rg_location
}

resource "azurerm_virtual_network" "vnet" {
  name                  = join("-", [local.prefix,var.vnet_name])   #LocalsVNET01 ---> nextops-localsvnet01
  resource_group_name   = local.rg_name_ref
  location              = local.rg_location_ref
  address_space         = var.address_space
}

resource "azurerm_subnet" "subnet1" {
  name                  = join("-", [local.prefix,var.subnet1_name])  #subnet1  ---> nextops-subnet1
  resource_group_name   = local.rg_name_ref
  virtual_network_name  = local.vnet_name_ref
  address_prefixes      = var.s1_address_prefix
}
