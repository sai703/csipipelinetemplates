module "privateendpoint-appconfig-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-appconfig-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.appconfig_private_connection_name
  private_connection_resource_id = module.appconfig-ddacloudcore.id
  subresource_names              = var.appconfig_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.appconfig_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.appconfig_dns.id]
  tags                           = local.tags
}

module "privateendpoint-cosmosdb-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-cosmosdb-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.cosmosdb_private_connection_name
  private_connection_resource_id = module.cosmosdb-ddacloudcore.cosmosdb_id
  subresource_names              = var.cosmosdb_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.cosmosdb_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.cosmos_dns.id]
  tags                           = local.tags
}

module "privateendpoint-eventhubns-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-eventhubns-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns-ddacloudcore.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.eventhubns_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.eventhns_dns.id]
  tags                           = local.tags
}






module "privateendpoint-storage-stgstddaccspecscc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stgstddaccspecscc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stgstddaccspecscc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stgstddaccspecscc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddacctranslatescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddacctranslatescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddacctranslatescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddacctranslatescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccddatrxcc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccddatrxcc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccddatrxcc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccddatrxcc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccddaacctscc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccddaacctscc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccddaacctscc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccddaacctscc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccrunbal-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccrunbal-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccrunbal_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccrunbal-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccimagescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccimagescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccimagescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccimagescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddacctrxchangescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddacctrxchangescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddacctrxchangescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddacctrxchangescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccacctchangescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccacctchangescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccacctchangescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccacctchangescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccrtscc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccrtscc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccrtscc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccrtscc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccddamemocc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccddamemocc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccddamemocc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccddamemocc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccrtsnewacctcc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccrtsnewacctcc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccrtsnewacctcc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccrtsnewacctcc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddaccrtsbalancescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddaccrtsbalancescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddaccrtsbalancescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddaccrtsbalancescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddacctxlateschangescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddacctxlateschangescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddacctxlateschangescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddactxlatschngscc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}

module "privateendpoint-storage-stddacctspecchangescc-ddacloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-storage-stddacctspecchangescc-ddacloudcore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.stddacctspecchangescc_storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddacctspecchangescc-ddacloudcore.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.storage_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                           = local.tags
}




module "privateendpoint-func-ddacloudcore-specscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-specscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcspecscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-specscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}


module "privateendpoint-func-ddacloudcore-translatescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-translatescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.functranslatescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-translatescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-ddatransactionscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-ddatransactionscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddatransactionscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-ddatransactionscloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-ddaaccountscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-ddaaccountscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddaaccountscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-ddaaccountscloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-runningbalance" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-runningbalance-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcrunningbalance_private_connection_name
  private_connection_resource_id = module.service-plan-runningbalance-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-imagescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-imagescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcimagescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-imagescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-transactionchangescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-transactionchangescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.functransactionchangescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-transactionchangescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-accountchangescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-accountchangescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcaccountchangescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-accountchangescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-rtscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-rtscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcrtscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-rtscloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-specschangescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-specschangescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcspecschangescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-specschangescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-ddamemocloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-ddamemocloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcddamemocloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-ddamemocloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-rtsnewaccountscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-rtsnewaccountscloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcrtsnewaccountscloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-rtsnewaccountscloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-rtsbalancescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-rtsbalancescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funcrtsbalancescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-rtsbalancescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}

module "privateendpoint-func-ddacloudcore-translateschangescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-ddacloudcore-translateschangescloudcore-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-ddacloudcore.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.functranslateschangescloudcore_private_connection_name
  private_connection_resource_id = module.service-plan-translateschangescloudcore-ddacloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.funcapp_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                           = local.tags
}


