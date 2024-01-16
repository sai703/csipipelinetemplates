module "privateendpoint-appconfig-statementscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-appconfig-statementscloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.appconfig_private_connection_name
  private_connection_resource_id = module.appconfig-statementscloudcore.id
  subresource_names              = var.appconfig_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.appconfig_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.appconfig_dns.id]
  tags                           = local.tags
}

module "privateendpoint-cosmosdb-statementscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-cosmosdb-statementscloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.cosmosdb_private_connection_name
  private_connection_resource_id = module.cosmosdb-statementscloudcore.cosmosdb_id
  subresource_names              = var.cosmosdb_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.cosmosdb_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.cosmos_dns.id]
  tags                           = local.tags
}


module "privateendpoint-storage-ststmtsccspecscc-statementscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-ststmtsccspecscc-statementscloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.ststmtsccspecscc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-ststmtsccspecscc-statementscloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-ststmtsccddaacctscc-statementscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-ststmtsccddaacctscc-statementscloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.ststmtsccddaacctscc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-ststmtsccddaacctscc-statementscloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-ststmtcfprovidermap-statementscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-ststmtcfprovidermap-statementscloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.ststmtcfprovidermap_storage_private_connection_name
  private_connection_resource_id = module.storage-account-ststmtcfprovidermap-statementscloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}






module "privateendpoint-func-statementscloudcore-specscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-statementscloudcore-specscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcspecscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-specscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}


module "privateendpoint-func-statementscloudcore-ddaacctscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-statementscloudcore-ddaacctscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddaacctscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-ddaacctscloudcore-statementscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-statementscloudcore-cfprovidermap" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-statementscloudcore-cfprovidermap-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-statementscloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funccfprovidermap_private_connection_name
  private_connection_resource_id = module.service-plan-cfprovidermap-statementscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}
