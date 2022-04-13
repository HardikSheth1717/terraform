terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "my_group" {
  name     = "my-tf-rg"
  location = "westindia"
  tags = {
    "Environment" = "Terraform Getting Started"
    "Team"        = "DevOps"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "my-tf-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westindia"
  resource_group_name = azurerm_resource_group.my_group.name
}