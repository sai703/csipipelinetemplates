terraform {
  cloud {
    organization = "csiseg"
    workspaces {
      tags = ["specscloudcore"]
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "> 3.30"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}