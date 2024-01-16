module "fdx-routetable" {
  source                        = "app.terraform.io/csiseg/subnetroutetable/csi"
  version                       = "1.0.2"
  location                      = var.loc
  disable_bgp_route_propagation = "true"
  teamname                      = "routetable-fdx-${var.env}-${var.loc}"
  resource_group_name           = "rg-coreservices-ebg-nonprod-${var.loc}"
  tags                          = local.tags
}

module "routetable-route" {
  source  = "app.terraform.io/csiseg/routetable-route/csi"
  version = "1.0.0"
  providers = {
    azurerm.dest = azurerm.network
    azurerm.src  = azurerm.core-services
  }
  route_table_name            = module.fdx-routetable.name
  resource_group_name         = "rg-coreservices-ebg-nonprod-${var.loc}"
  routename                   = "fdx-${var.env}-spoke-routing-to-hub-vnet"
  route_address_prefix        = "0.0.0.0/0"
  hoptype                     = "VirtualAppliance"
  firewall_name               = var.firewall_name
  firewall_resourcegroup_name = var.firewall_resourcegroup_name
}
