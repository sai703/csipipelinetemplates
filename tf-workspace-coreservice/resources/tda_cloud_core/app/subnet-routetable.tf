module "tdacc-routetable" {
  source                        = "app.terraform.io/csiseg/subnetroutetable/csi"
  version                       = "1.0.2"
  location                      = var.loc
  disable_bgp_route_propagation = "true"
  teamname                      = "routetable-tdacc-ebg-${var.env}-${var.loc}"
  resource_group_name           = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                          = local.tags
}

module "routetable-route" {
  source  = "app.terraform.io/csiseg/routetable-route/csi"
  version = "1.0.0"
  providers = {
    azurerm.dest = azurerm.network
    azurerm.src  = azurerm.core-services
  }
  route_table_name            = module.tdacc-routetable.name
  resource_group_name         = "rg-coreservices-ebg-nonprod-${var.loc}"
  routename                   = "tdacc-${var.env}-spoke-routing-to-hub-vnet"
  route_address_prefix        = "0.0.0.0/0"
  hoptype                     = "VirtualAppliance"
  firewall_name               = var.firewall_name
  firewall_resourcegroup_name = var.rg_name
}