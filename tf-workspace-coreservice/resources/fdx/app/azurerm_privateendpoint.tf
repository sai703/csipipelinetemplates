module "privateendpoint-appconfig-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-appconfig-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.appconfig_private_connection_name
  private_connection_resource_id = module.appconfig-fdx.id
  subresource_names              = var.appconfig_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.appconfig_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.appconfig_dns.id]
  tags                           = local.tags
}

module "privateendpoint-cosmosdb-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-cosmosdb-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.cosmosdb_private_connection_name
  private_connection_resource_id = module.cosmosdb-fdx.cosmosdb_id
  subresource_names              = var.cosmosdb_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.cosmosdb_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.cosmos_dns.id]
  tags                           = local.tags
}
module "privateendpoint-eventhubns-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-eventhubns-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns-fdx.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.eventhubns_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.eventhns_dns.id]
  tags                           = local.tags
}


module "privateendpoint-storage-stfdxddatrx-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxddatrx-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxddatrx_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxddatrx-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stfdxddaaccts-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxddaaccts-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxddaaccts_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxddaaccts-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stfdxlnstrxx-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxlnstrxx-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxlnstrxx_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxlnstrxx-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stfdxlnsaccts-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxlnsaccts-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxlnsaccts_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxlnsaccts-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}


module "privateendpoint-storage-stfdxtdatrx-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxtdatrx-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxtdatrx_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxtdatrx-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stfdxtdaaccts-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxtdaaccts-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxtdaaccts_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxtdaaccts-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stfdxcif-fdx" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stfdxcif-fdx-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stfdxcif_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stfdxcif-fdx.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}






module "privateendpoint-func-fdx-ddatransactions" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-ddatransactions-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddatransactions_private_connection_name
  private_connection_resource_id = module.service-plan-ddatransactions-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}


module "privateendpoint-func-fdx-ddaaccounts" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-ddaaccounts-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddaaccounts_private_connection_name
  private_connection_resource_id = module.service-plan-ddaaccounts-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-fdx-lnstransactions" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-lnstransactions-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funclnstransactions_private_connection_name
  private_connection_resource_id = module.service-plan-lnstransactions-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-fdx-lnsaccounts" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-lnsaccounts-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funclnsaccounts_private_connection_name
  private_connection_resource_id = module.service-plan-lnsaccounts-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-fdx-tdatransactions" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-tdatransactions-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.functdatransactions_private_connection_name
  private_connection_resource_id = module.service-plan-tdatransactions-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-fdx-tdaaccounts" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-tdaaccounts-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.functdaaccounts_private_connection_name
  private_connection_resource_id = module.service-plan-tdaaccounts-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-fdx-cif" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-fdx-cif-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-fdx.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funccif_private_connection_name
  private_connection_resource_id = module.service-plan-cif-fdx.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}
