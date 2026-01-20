resourcedetails = {
  "eastus" = {
    rg_name         = "eastRG"
    rg_location     = "eastus"
    vnet_name       = "eastVnet"
    address_space   = ["10.200.0.0/16"]
    subnet_name     = "eastSubnet"
    address_prefix  = ["10.200.0.0/24"]
    nic_name        = "eastvmnic"
    vm_name         = "eastvm01"
    vm_size         = "Standard_B1s"
  }
  "westus" = {
    rg_name         = "westRG"
    rg_location     = "westus"
    vnet_name       = "westVnet"
    address_space   = ["10.150.0.0/16"]
    subnet_name     = "westSubnet"
    address_prefix  = ["10.150.0.0/24"]
    nic_name        = "westvmnic"
    vm_name         = "westvm01"
    vm_size         = "Standard_B2s"
  }  
}