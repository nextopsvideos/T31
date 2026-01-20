# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.57.0"
    }
  }
  backend "azurerm" {
    access_key           = "gBFR75Pnvr/HwnNNTl/FkuhaP3vc2fpV9b+nvq4RUPm0YuxkbRFseIUDU5/9D499rtXtKYBQnWN8+AStTyhBag=="
    storage_account_name = "nextopstfsat31"                                 
    container_name       = "modules"                                 
    key                  = "DEV/terraform.tfstate"                  
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  resource_provider_registrations = "none" 
  features {}
  subscription_id = "a355c32e-4a22-4b05-aab4-be236850fa6e"
}