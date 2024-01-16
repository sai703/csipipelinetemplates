module "internal-server-routetable-eastus2" {
  source                        = "app.terraform.io/csiseg/subnetroutetable/csi"
  version                       = "1.0.2"
  location                      = "eastus2"
  disable_bgp_route_propagation = "false"
  teamname                      = "internal-server-dcops-prod-eastus2"
  resource_group_name           = module.resourcegroup-eastus2.name
  tags                          = local.eastus2_tags
}

module "internal-server-routetable-centralus" {
  source                        = "app.terraform.io/csiseg/subnetroutetable/csi"
  version                       = "1.0.2"
  location                      = "centralus"
  disable_bgp_route_propagation = "false"
  teamname                      = "internal-server-dcops-prod-centralus"
  resource_group_name           = module.resourcegroup-centralus.name
  tags                          = local.centralus_tags
}

module "routetable-route-eastus2" {
  source  = "app.terraform.io/csiseg/routetable-route/csi"
  version = "1.0.0"
  providers = {
    azurerm.dest = azurerm.network-prod
    azurerm.src  = azurerm.server-resources
  }
  route_table_name            = module.internal-server-routetable-eastus2.name
  resource_group_name         = module.resourcegroup-eastus2.name
  routename                   = "internal-servers-spoke-routing-to-hub-vnet"
  route_address_prefix        = "0.0.0.0/0"
  hoptype                     = "VirtualAppliance"
  firewall_name               = "FirewallNetOpsNetworkProdEastUS2"
  firewall_resourcegroup_name = "RGNetOpsNetworkprodEastUS2"
}

module "routetable-route-centralus" {
  source  = "app.terraform.io/csiseg/routetable-route/csi"
  version = "1.0.0"
  providers = {
    azurerm.dest = azurerm.network-prod
    azurerm.src  = azurerm.server-resources
  }
  route_table_name            = module.internal-server-routetable-centralus.name
  resource_group_name         = module.resourcegroup-centralus.name
  routename                   = "internal-servers-spoke-routing-to-hub-vnet"
  route_address_prefix        = "0.0.0.0/0"
  hoptype                     = "VirtualAppliance"
  firewall_name               = "FirewallNetOpsNetworkProdCentralUS"
  firewall_resourcegroup_name = "RGNetOpsNetworkprodCentralUS"
}
