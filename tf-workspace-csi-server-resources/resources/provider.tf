terraform {
  cloud {
    organization = "csiseg"

    workspaces {
      name = "csi-server-resources"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.9.0"
    }
  }
}

provider "azurerm" {
  features {}
}
