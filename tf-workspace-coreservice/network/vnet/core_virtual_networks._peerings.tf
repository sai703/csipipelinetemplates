module "vnetpeer" {
  source  = "app.terraform.io/csiseg/vnetpeering/csi"
  version = "1.0.1"
  providers = {
    azurerm.src  = azurerm.core-services
    azurerm.dest = azurerm.network
  }
  sourceteamname             = "vnetpeer-coreservices-ebg-${var.env}-${var.loc}"
  network_resourcegroupname  = "RGNetOpsNetwork${var.network_env}${var.network_loc}"
  virtual_network_name_hub   = "VNetNetOpsNetwork${var.network_env}${var.network_loc}"
  virtual_network_name_spoke = module.vnet.name
  resource_group_name        = module.resourcegroup.name
  allow_forwarded_traffic    = true
  allow_gateway_transit      = false
  use_remote_gateways        = true
  depends_on = [module.vnet]
}