terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "vaishnavi-rg"
    storage_account_name = "tanust123"
    container_name       = "tanucontainer12"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "9748e05f-7aa5-425d-be8d-bb9add8a6c75"
}


