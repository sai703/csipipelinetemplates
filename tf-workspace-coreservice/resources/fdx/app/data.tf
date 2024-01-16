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


