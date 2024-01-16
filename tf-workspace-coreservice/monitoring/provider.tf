terraform {
  cloud {
    organization = "csiseg"

    workspaces {
      tags = ["coreservice-monitoring"]
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