resource "azurerm_resource_group" "rg1" {
    name        = "TFRG01"
    location    = "eastus"
}

resource "azurerm_virtual_network" "vnet1" {
    name                = "TFVNET01"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name  #TFRG01
    address_space       = ["10.10.0.0/16"]  #65536
}

resource "azurerm_subnet" "subnet1" {
  name                 = "Subnet1"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.10.0.0/24"]  #256
}

resource "azurerm_subnet" "subnet2" {
  name                 = "Subnet2"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.10.1.0/24"]  #256
}

resource "azurerm_subnet" "subnet3" {
  name                 = "Subnet3"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.10.2.0/24"]  #256
}