terraform {
  cloud {
    organization = "csiseg"
    workspaces {
      tags = ["coreservice-resources"]
    }
  }


required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}


// provider "azurerm" {
//   features {}
// }

provider "azurerm" {
  features {}

  client_id       = var.tf_sa_client_id
  client_secret   = var.tf_sa_client_secret
  subscription_id = var.tf_sa_subscription_id
  tenant_id       = var.tf_sa_tenant_id
}

data "azurerm_client_config" "current" {}
