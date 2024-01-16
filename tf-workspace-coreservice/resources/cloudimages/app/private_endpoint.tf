module "privateendpoint-appconfig" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"
  privateendpointname            = "pe-appconfig-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.appconfig_private_connection_name
  private_connection_resource_id = module.appconfig.id
  subresource_names              = var.appconfig_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.appconfig_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.appconfig_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-storage-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-eventhubns" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-eventhubns-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.eventhubns_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.eventhns_dns.id]
  tags                           = local.tags
}

module "privateendpoint-cosmosdb" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-cosmosdb-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.cosmosdb_private_connection_name
  private_connection_resource_id = module.cosmos-db.cosmosdb_id
  subresource_names              = var.cosmosdb_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.cosmosdb_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.cosmos_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funsetbyid" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funsetbyid-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funsetbyid_private_connection_name
  private_connection_resource_id = module.service-plan-SetById.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funitembyid" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funitembyid-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funitembyid_private_connection_name
  private_connection_resource_id = module.service-plan-ItemById.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funtransid" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funtransid-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtransid_private_connection_name
  private_connection_resource_id = module.service-plan-transaction.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funtranssub" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funtranssub-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtranssub_private_connection_name
  private_connection_resource_id = module.service-plan-TransactionSubscriber.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funnupoint" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-nupoint-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funnupoint_private_connection_name
  private_connection_resource_id = module.service-plan-NuPointException.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funmeridian" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funmeridian-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funmeridian_private_connection_name
  private_connection_resource_id = module.service-plan-MeridianException.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funx9sub" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funx9sub-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funx9sub_private_connection_name
  private_connection_resource_id = module.service-plan-x9subscriber.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-funx9error" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-funx9error-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funx9error_private_connection_name
  private_connection_resource_id = module.service-plan-x9error.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-httpfunc-imaging" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.15"

  privateendpointname            = "pe-httpfunc-imaging-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.httpfunc_private_connection_name
  private_connection_resource_id = module.service-plan-httpfunc.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}
