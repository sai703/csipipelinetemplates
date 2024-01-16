terraform {
  cloud {
    organization = "csiseg"

    workspaces {
      name = "tf-workspace-server-resources-prod-network-latest"
    }
  }

  required_providers {
    azurerm = {
      source                = "hashicorp/azurerm"
      version               = "~> 3.0"
      configuration_aliases = [azurerm.src, azurerm.dest]
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = var.tf_sa_client_id
  client_secret   = var.tf_sa_client_secret
  subscription_id = var.tf_sa_subscription_id
  tenant_id       = var.tf_sa_tenant_id
}

provider "azurerm" {
  alias = "server-resources"
  features {}

  client_id       = var.tf_sa_client_id
  client_secret   = var.tf_sa_client_secret
  subscription_id = var.tf_sa_subscription_id
  tenant_id       = var.tf_sa_tenant_id
}

provider "azurerm" {
  alias = "network-prod"
  features {}

  client_id       = var.tf_sa_client_id
  client_secret   = var.tf_sa_client_secret
  subscription_id = var.network_prod_subscription_id
  tenant_id       = var.tf_sa_tenant_id
}

data "azurerm_client_config" "current" {}
