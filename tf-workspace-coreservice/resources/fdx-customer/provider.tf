terraform {
  cloud {
    organization = "csiseg"
    workspaces {
      name = "tf-workspace-fdxcustomer-coreservice-dev"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}
