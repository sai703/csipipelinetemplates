module "privateendpoint-appconfig" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-appconfig-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.appconfig_private_connection_name
  private_connection_resource_id = module.appconfig.id
  subresource_names              = var.appconfig_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.appconfig_dns_name
  dns_name             = data.azurerm_private_dns_zone.appconfig_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.appconfig_dns.id]
  tags                 = local.tags
}

module "privateendpoint-storage-account-sttdacctdatrxcc" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-sttdatrxcc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account-sttdacctdatrxcc.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.storage_dns_name
  dns_name             = data.azurerm_private_dns_zone.storage_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                 = local.tags
}

module "privateendpoint-storage-account-sttdacctrxchangescc" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-sttdacctrxchangescc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account-sttdacctrxchangescc.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.storage_dns_name
  dns_name             = data.azurerm_private_dns_zone.storage_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                 = local.tags
}

module "privateendpoint-storage-account-sttdacctdaacctscc" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-sttdacctcc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account-sttdacctdaacctscc.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.storage_dns_name
  dns_name             = data.azurerm_private_dns_zone.storage_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                 = local.tags
}

module "privateendpoint-storage-account-stddcustomerpecscc" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-stddcustcc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account-stddcustomerpecscc.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.storage_dns_name
  dns_name             = data.azurerm_private_dns_zone.storage_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                 = local.tags
}

module "privateendpoint-keyvault" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-keyvault-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.keyvault.id
  subresource_names              = var.keyvault_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.keyvault_dns_name
  dns_name             = data.azurerm_private_dns_zone.keyvault_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.keyvault_dns.id]
  tags                 = local.tags
}

module "privateendpoint-eventhubns" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-eventhubns-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.eventhubns_dns_name
  dns_name             = data.azurerm_private_dns_zone.eventhns_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.eventhns_dns.id]
  tags                 = local.tags
}

module "privateendpoint-cosmosdb" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-cosmosdb-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.cosmosdb_private_connection_name
  private_connection_resource_id = module.cosmos-db.cosmosdb_id
  subresource_names              = var.cosmosdb_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.cosmosdb_dns_name
  dns_name             = data.azurerm_private_dns_zone.cosmos_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.cosmos_dns.id]
  tags                 = local.tags
}

module "privateendpoint-func-tdatransactionscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-tdatranscc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtdatranscc_private_connection_name
  private_connection_resource_id = module.service-plan-tdacloudcore-tdatransactionscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.funcapp_dns_name
  dns_name             = data.azurerm_private_dns_zone.funcapp_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                 = local.tags
}

module "privateendpoint-func-tdaaccountscloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-tdaacctscc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtdaacctscc_private_connection_name
  private_connection_resource_id = module.service-plan-tdacloudcore-tdaaccountscloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.funcapp_dns_name
  dns_name             = data.azurerm_private_dns_zone.funcapp_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                 = local.tags
}

// module "privateendpoint-func-customercloudcore" {
//   source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
//   version                        = "1.0.15"
//   privateendpointname            = "pe-func-custcc-tdacc-ebg-${var.env}-${var.loc}"
//   location                       = var.loc
//   resource_group_name            = module.resourcegroup.name
//   subnet_id                      = module.subnet-privateendpoint.subnet_id
//   private_connection_name        = var.funcustcc_private_connection_name
//   private_connection_resource_id = module.service-plan-tdacloudcore-customercloudcore.id
//   subresource_names              = var.funcapp_subresource_names
//   is_manual_connection           = var.is_manual_connection
//   #dns_name                       = var.funcapp_dns_name
//   dns_name             = data.azurerm_private_dns_zone.funcapp_dns.name
//   private_dns_zone_ids = [data.azurerm_private_dns_zone.funcapp_dns.id]
//   tags                 = local.tags
// }

module "privateendpoint-func-tdaaccountchangescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-tdaaccountscc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtdaacctscc_private_connection_name
  private_connection_resource_id = module.service-plan-tdacloudcore-tdaaccountchangescloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.funcapp_dns_name
  dns_name             = data.azurerm_private_dns_zone.funcapp_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                 = local.tags
}


module "privateendpoint-func-tdatranslatescloudcore" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-func-tdatranslatescc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.funtdatranslatescc_private_connection_name
  private_connection_resource_id = module.service-plan-tdacloudcore-tdatranslatescloudcore.id
  subresource_names              = var.funcapp_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.funcapp_dns_name
  dns_name             = data.azurerm_private_dns_zone.funcapp_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.funcapp_dns.id]
  tags                 = local.tags
}

module "privateendpoint-storage-account-sttdacctranslatescc" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-sttdacctranslatescc-tdacc-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.storage_private_connection_name
  private_connection_resource_id = module.storage-account-sttdacctranslatescc.id
  subresource_names              = var.storage_subresource_names
  is_manual_connection           = var.is_manual_connection
  #dns_name                       = var.storage_dns_name
  dns_name             = data.azurerm_private_dns_zone.storage_dns.name
  private_dns_zone_ids = [data.azurerm_private_dns_zone.storage_dns.id]
  tags                 = local.tags
}

