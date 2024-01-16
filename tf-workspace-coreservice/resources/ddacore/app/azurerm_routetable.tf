module "ddacore-routetable" {
  source                        = "app.terraform.io/csiseg/subnetroutetable/csi"
  version                       = "1.0.2"
  location                      = var.loc
  disable_bgp_route_propagation = "true"
  teamname                      = "routetable-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name           = "rg-coreservices-ebg-${var.route_env}-${var.loc}"
  tags                          = local.tags
}

module "routetable-route" {
  source  = "app.terraform.io/csiseg/routetable-route/csi"
  version = "1.0.0"
  providers = {
    azurerm.dest = azurerm.network
    azurerm.src  = azurerm.coreservices
  }
  route_table_name            = module.ddacore-routetable.name
  resource_group_name         = "rg-coreservices-ebg-${var.route_env}-${var.loc}"
  routename                   = "ddacore-${var.env}-spoke-routing-to-hub-vnet"
  route_address_prefix        = "0.0.0.0/0"
  hoptype                     = "VirtualAppliance"
  firewall_name               = var.firewall_name
  firewall_resourcegroup_name = var.firewall_resourcegroup_name
}