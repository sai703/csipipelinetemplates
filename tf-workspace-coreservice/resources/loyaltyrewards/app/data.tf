# data "azurerm_subnet" "subnet-prvtendpoint" {
#   name = "subnet-coreserivces-pvtendpoint-ebg-centralus"
#   virtual_network_name = "vnet-coreservices-ebg-nonprod-centralus"
#   resource_group_name = "rg-coreservices-ebg-nonprod-centralus"
# }

data "azurerm_log_analytics_workspace" "law" {
  name                = var.loganalytics_name
  resource_group_name = var.loganalytics_resource_group
}