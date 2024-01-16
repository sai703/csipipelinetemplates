#LAW Data source

data "azurerm_log_analytics_workspace" "law" {
  name                = "lgwkpccoresrvcnonprd${var.loc}-7929248592356020403"
  resource_group_name = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
}

data "azurerm_private_dns_zone" "appconfig_dns" {
  provider            = azurerm.network
  name                = "privatelink.azconfig.io"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}

data "azurerm_private_dns_zone" "storage_dns" {
  provider            = azurerm.network
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}

data "azurerm_private_dns_zone" "eventhns_dns" {
  provider            = azurerm.network
  name                = "privatelink.servicebus.windows.net"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}

data "azurerm_private_dns_zone" "cosmos_dns" {
  provider            = azurerm.network
  name                = "privatelink.documents.azure.com"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}

data "azurerm_private_dns_zone" "funcapp_dns" {
  provider            = azurerm.network
  name                = "azurewebsites.net"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}

data "azurerm_private_dns_zone" "keyvault_dns" {
  provider            = azurerm.network
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = "rgnetopsnetwork${var.main_env_type}${var.loc}"
  #resource_group_name = var.rg_name
}
#Event hub data sources

# data "azurerm_eventhub" "evh-specscloudcore" {
#     name                = var.specscc_name
#     resource_group_name = var.specscc_rg_name
#     namespace_name      = var.specscc_evhns_name
#  }

// data "azurerm_eventhub" "evh-translatescloudcore" {
//   name                = var.transcc_name
//   resource_group_name = var.transcc_rg_name
//   namespace_name      = var.transcc_evhns_name
//   }

# data "azurerm_eventhub" "evh-tdacustomerscore" {
#     name                = var.tdacustcc_name
#     resource_group_name = var.tdacustcc_rg_name
#     namespace_name      = var.tdacustcc_evhns_name
#  }

# data "azurerm_eventhub" "evh-tdatransactionscore" {
#     name                = var.tdatranscc_name
#     resource_group_name = var.tdatranscc_rg_name
#     namespace_name      = var.tdatranscc_evhns_name
#  }

# data "azurerm_eventhub" "evh-tdaaccountscore" {
#     name                = var.tdaacctcc_name
#     resource_group_name = var.tdaacctcc_rg_name
#     namespace_name      = var.tdaacctcc_evhns_name
#  }