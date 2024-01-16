terraform {
  cloud {
    organization = "csiseg"
    workspaces {
      tags = ["tdacloudcore"]
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

  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  subscription_id = var.arm_subscription_id
  tenant_id       = var.arm_tenant_id
}

provider "azurerm" {
  alias = "core-services"
  features {}

  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  subscription_id = var.arm_subscription_id
  tenant_id       = var.arm_tenant_id
}

provider "azurerm" {
  alias = "network"
  features {}

  client_id       = var.arm_client_id
  client_secret   = var.arm_client_secret
  subscription_id = var.network_subscription_id
  tenant_id       = var.arm_tenant_id
}

data "azurerm_client_config" "current" {}