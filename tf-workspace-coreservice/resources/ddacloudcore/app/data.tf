data "azurerm_log_analytics_workspace" "law" {
  name                = "lgwkpccoresrvcnonprd${var.loc}-7929248592356020403"
  resource_group_name = "rg-coreservices-ebg-nonprod-${var.loc}"
}
data "azurerm_private_dns_zone" "appconfig_dns" {
  provider            = azurerm.network
  name                = "privatelink.azconfig.io"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}
data "azurerm_private_dns_zone" "storage_dns" {
  provider            = azurerm.network
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}
data "azurerm_private_dns_zone" "eventhns_dns" {
  provider            = azurerm.network
  name                = "privatelink.servicebus.windows.net"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}
data "azurerm_private_dns_zone" "cosmos_dns" {
  provider            = azurerm.network
  name                = "privatelink.documents.azure.com"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}
data "azurerm_private_dns_zone" "funcapp_dns" {
  provider            = azurerm.network
  name                = "azurewebsites.net"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}

data "azurerm_eventhub_namespace" "evhns_ddacore" {
  name                = "evhns-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-ddacore-ebg-${var.env}-${var.loc}"
}

data "azurerm_eventhub_namespace" "evhns_specscloudcore" {
  name                = "evhns-specscloudcore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-specscloudcore-ebg-${var.env}-${var.loc}"
}

data "azurerm_eventhub_namespace" "evhns_rtscore" {
  name                = "evhns-rts-core-${var.env}${var.loc}"
  resource_group_name = "rg-rts-core-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "evh_rtsddamaster" {
  name                = "evh-rtsddamaster-${var.env}${var.loc}"
  namespace_name      = "evhns-rts-core-${var.env}${var.loc}"
  resource_group_name = "rg-rts-core-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "evh_rtsmontrx" {
  name                = "evh-rtsmontrx-${var.env}${var.loc}"
  namespace_name      = "evhns-rts-core-${var.env}${var.loc}"
  resource_group_name = "rg-rts-core-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "evh_rtsnewacct" {
  name                = "evh-rtsnewacct-${var.env}${var.loc}"
  namespace_name      = "evhns-rts-core-${var.env}${var.loc}"
  resource_group_name = "rg-rts-core-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "ddaaccountscore_eventhub" {
  name                = "evh-ddaaccountscore-ebg-${var.env}-${var.loc}"
  namespace_name      = "evhns-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-ddacore-ebg-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "ddatransactionscore_eventhub" {
  name                = "evh-ddatransactionscore-ebg-${var.env}-${var.loc}"
  namespace_name      = "evhns-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-ddacore-ebg-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "ddamemocloudcore_eventhub" {
  name                = "evh-ddamemocore-ebg-${var.env}-${var.loc}"
  namespace_name      = "evhns-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-ddacore-ebg-${var.env}-${var.loc}"
}

data "azurerm_eventhub" "specscloudcore_eventhub" {
  name                = "evh-specscloudcore"
  namespace_name      = "evhns-specscloudcore-ebg-${var.env}-${var.loc}"
  resource_group_name = "rg-specscloudcore-ebg-${var.env}-${var.loc}"
}


