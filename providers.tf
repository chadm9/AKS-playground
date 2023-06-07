terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.59.0"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~>1.6.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "manual"
        storage_account_name = "tfstate142023"
        container_name       = "tfstateblob"
        key                  = "aksplayground.tfstate"
  }
}

provider "azurerm" {
  features {}
}

provider "azapi" {}