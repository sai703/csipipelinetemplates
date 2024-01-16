module "vnetpeer-eastus2" {
  source  = "app.terraform.io/csiseg/vnetpeering/csi"
  version = "1.0.1"
  providers = {
    azurerm.dest = azurerm.network-prod
    azurerm.src  = azurerm.server-resources
  }
  sourceteamname             = "vnetpeer-internal-dcops-tohub-prod-eastus2"
  network_resourcegroupname  = "RGNetOpsNetworkprodEastUS2"
  virtual_network_name_hub   = "VNetNetOpsNetworkProdEastUS2"
  virtual_network_name_spoke = module.server-resources-vnet-eastus2.name
  resource_group_name        = module.resourcegroup-eastus2.name
  allow_forwarded_traffic    = true
  allow_gateway_transit      = true
  use_remote_gateways        = true
}


module "vnetpeer-centralus" {
  source  = "app.terraform.io/csiseg/vnetpeering/csi"
  version = "1.0.1"
  providers = {
    azurerm.dest = azurerm.network-prod
    azurerm.src  = azurerm.server-resources
  }
  sourceteamname             = "vnetpeer-internal-dcops-tohub-prod-centralus"
  network_resourcegroupname  = "RGNetOpsNetworkprodCentralUS"
  virtual_network_name_hub   = "VNetNetOpsNetworkProdCentralUS"
  virtual_network_name_spoke = module.server-resources-vnet-centralus.name
  resource_group_name        = module.resourcegroup-centralus.name
  allow_forwarded_traffic    = true
  allow_gateway_transit      = true
  use_remote_gateways        = true
}
