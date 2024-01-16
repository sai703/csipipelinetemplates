module "privateendpoint-eventhubns" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-eventhubns-ddacore-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.rg-ddacore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns-ddacore.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.eventhubns_dns_name
  private_dns_zone_ids           = var.eventhubns_dns_id
  tags                           = local.service_tags
  depends_on = [module.subnet-privateendpoint]
}


module "privateendpoint-keyvault" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-keyvault-ddacore-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.rg-ddacore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.keyvault_prvtcon_name 
  private_connection_resource_id = module.kv-ddacloudcore.id 
  subresource_names = var.keyvaultresource_name 
  dns_name = var.keyvaultdns_name 
  private_dns_zone_ids = var.keyvaultdns_zone_id
  tags                           = local.service_tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-appconfig" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-appconfig-ddacore-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.rg-ddacore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.appconfig_prvtcon_name 
  private_connection_resource_id = module.appconfig.id 
  subresource_names = var.appconfigresource_name 
  dns_name = var.appconfigdns_name 
  private_dns_zone_ids = var.appconfigdns_zone_id
  tags                           = local.service_tags
  depends_on = [module.subnet-privateendpoint]
}