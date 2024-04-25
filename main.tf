terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfubuntu" {
  name     = "tf"
  location = "East US"
}

output "rg" {
  value = "${azurerm_resource_group.tfubuntu.name} has been created successfully"
}
