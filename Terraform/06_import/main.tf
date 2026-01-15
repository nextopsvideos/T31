resource "azurerm_resource_group" "rg1" {
  name      = "ImportRG"
  location  = "eastus"
}

resource "azurerm_virtual_network" "vnet1" {
    name                = "ImportVNET01"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name  
    address_space       = ["10.50.0.0/16"]  #65536
}

resource "azurerm_subnet" "subnet1" {
  name                 = "Subnet01"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.50.0.0/24"]  #256
}

resource "azurerm_subnet" "subnet2" {
  name                 = "Subnet02"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.50.1.0/24"]  #256
}