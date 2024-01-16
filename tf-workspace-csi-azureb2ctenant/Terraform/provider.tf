terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = ">= 2.26.1"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.13.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "var.azureaddb2cstatefiles"
      container_name       = "tfstate"
      key                  = "terraform_state.tfstate"
  }
}

provider "azurerm" {
  features {}
}