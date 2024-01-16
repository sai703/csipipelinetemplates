data "azurerm_eventhub_namespace" "eventhubns-ddacore" {
  name                = "evhns-ddacore-ebg-dev-centralus"
  resource_group_name = "rg-ddacore-ebg-dev-centralus"
}
data "azurerm_private_dns_zone" "eventhns_dns" {
  provider            = azurerm.network
  name                = "privatelink.servicebus.windows.net"
  resource_group_name = "rgnetopsnetworknonprod${var.loc}"
}