terraform {
  required_providers {
     azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "a0c353b6-cb40-4e36-a692-5ce1da78943d"
}

module "network_vm" {
  source = "./modules/network_vm"

  resource_group_name = var.resource_group_name
  location            = var.location
  admin_username      = var.admin_username
  admin_ssh_key       = var.admin_ssh_key
}
