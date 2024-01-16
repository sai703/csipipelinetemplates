data "azurerm_subnet" "subnet-prvtendpoint" {
  name = "subnet-coreserivces-pvtendpoint-ebg-centralus"
  virtual_network_name = "vnet-coreservices-ebg-nonprod-centralus"
  resource_group_name = "rg-coreservices-ebg-nonprod-centralus"
}

data "azurerm_log_analytics_workspace" "law" {
  name                = "lgwkpccoresrvcnonprd${var.loc}-7929248592356020403"
  resource_group_name = "rg-coreservices-ebg-nonprod-${var.loc}"
}