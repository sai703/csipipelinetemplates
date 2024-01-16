module "privateendpoint-appconfig" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-appconfig-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.appconfig_prvtcon_name 
  private_connection_resource_id = module.appconfig.id 
  subresource_names = var.appconfigresource_name 
  dns_name = var.appconfigdns_name 
  private_dns_zone_ids = var.appconfigdns_zone_id
  tags                           = local.tags
}

module "privateendpoint-cosmos" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-cosmos-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.cosmos_prvtcon_name 
  private_connection_resource_id = module.cosmos-db.cosmosdb_id 
  subresource_names = var.cosmosresource_name 
  dns_name = var.cosmosdns_name 
  private_dns_zone_ids = var.cosmosdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-keyvault" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-keyvault-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.keyvault_prvtcon_name 
  private_connection_resource_id = module.kv-loyaltyrewards.id 
  subresource_names = var.keyvaultresource_name 
  dns_name = var.keyvaultdns_name 
  private_dns_zone_ids = var.keyvaultdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}


module "privateendpoint-account" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-account-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funcaccount_prvtcon_name 
  private_connection_resource_id = module.funcapp-loyaltyrewards-account.id 
  subresource_names = var.funcaccountresource_name 
  dns_name = var.funcaccountdns_name 
  private_dns_zone_ids = var.funcaccountdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-drawing" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-drawing-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funcdrawing_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-drawing.id 
  subresource_names = var.funcdrawingresource_name 
  dns_name = var.funcdrawingdns_name 
  private_dns_zone_ids = var.funcdrawingdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-transaction" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-transaction-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.functransaction_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-transaction.id 
  subresource_names = var.functransactionresource_name 
  dns_name = var.functransactiondns_name 
  private_dns_zone_ids = var.functransactiondns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-transactionruns" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-transactionruns-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.functransactionruns_prvtcon_name 
  private_connection_resource_id = module.funcapp-loyaltyrewards-transactionruns.id 
  subresource_names = var.functransactionrunsresource_name 
  dns_name = var.functransactionrunsdns_name 
  private_dns_zone_ids = var.functransactionrunsdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-winner" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-funddacts-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funcwinner_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-winner.id 
  subresource_names = var.funcwinnerresource_name 
  dns_name = var.funcwinnerdns_name 
  private_dns_zone_ids = var.funcwinnerdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-transactionsubscriber" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-transsubscr-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.functransactionsubscr_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-transactionsubscriber.id 
  subresource_names = var.functransactionsubscrresource_name 
  dns_name = var.functransactionsubscrdns_name 
  private_dns_zone_ids = var.functransactionsubscrdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-changefeedbydate" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-changefeedbydate-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.funcchangefeedbydate_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-changefeedtransbydate.id 
  subresource_names = var.funcchangefeedbydateresource_name 
  dns_name = var.funcchangefeedbydatedns_name 
  private_dns_zone_ids = var.funcchangefeedbydatedns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-changefeedbyacc" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-changefeedbyacc-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.funcchangefeedbyacc_prvtcon_name 
  private_connection_resource_id = module.func-loyaltyrewards-changefeedtransbyacc.id 
  subresource_names = var.funcchangefeedbyaccresource_name 
  dns_name = var.funcchangefeedbyaccdns_name 
  private_dns_zone_ids = var.funcchangefeedbyaccdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage1" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stacc-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon1_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards1.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage2" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stdrwng-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon2_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards2.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage3" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-sttrns-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon3_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards3.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage4" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-sttrnrun-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon4_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards4.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage5" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stwnnr-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon5_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards5.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage6" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stsubcr-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon6_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards6.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage7" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stdchgdt-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon7_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards7.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}

module "privateendpoint-storage8" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stchgdtacc-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon8_name 
  private_connection_resource_id = module.storage-account-loyaltyrewards8.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint]
}