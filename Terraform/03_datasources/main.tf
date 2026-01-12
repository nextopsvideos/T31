data "azurerm_resource_group" "existingrg" {
  name = "ExistingRG"
}

data "azurerm_virtual_network" "existingvnet" {
  name                  = "ExistingVNET01"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
}

data "azurerm_subnet" "existingsubnet1" {
  name                  = "ExistingSubnet1"
  resource_group_name   = data.azurerm_resource_group.existingrg.name 
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name
}

resource "azurerm_subnet" "subnet2" {
  name                  = "Subnet2"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name 
  address_prefixes      = ["10.20.1.0/24"]
}

resource "azurerm_subnet" "subnet3" {
  name                  = "Subnet3"
  resource_group_name   = data.azurerm_resource_group.existingrg.name
  virtual_network_name  = data.azurerm_virtual_network.existingvnet.name 
  address_prefixes      = ["10.20.2.0/24"]
}