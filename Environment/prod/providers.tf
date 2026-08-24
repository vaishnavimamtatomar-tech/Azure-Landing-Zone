terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "vaishnavi-rg"
    storage_account_name = "tanust123"
    container_name       = "tanucontainer12"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
