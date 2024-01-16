module "privateendpoint-appconfig" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-appconfig-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
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
  privateendpointname            = "pe-cosmos-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.cosmos_prvtcon_name 
  private_connection_resource_id = module.cosmos-db.cosmosdb_id 
  subresource_names = var.cosmosresource_name 
  dns_name = var.cosmosdns_name 
  private_dns_zone_ids = var.cosmosdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-keyvault" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-keyvault-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
  private_connection_name = var.keyvault_prvtcon_name 
  private_connection_resource_id = module.kv-fdxaccount.id 
  subresource_names = var.keyvaultresource_name 
  dns_name = var.keyvaultdns_name 
  private_dns_zone_ids = var.keyvaultdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-stddatrx" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stddatx-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddatx_prvtcon_name 
  private_connection_resource_id = module.storage-account-ddatrx.id 
  subresource_names = var.stddatxresource_name 
  dns_name = var.stddatxdns_name 
  private_dns_zone_ids = var.stddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-stddaacts" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stddaaccts-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stddaaccts_prvtcon_name 
  private_connection_resource_id = module.storage-account-ddaaccts.id 
  subresource_names = var.stddaacctsresource_name 
  dns_name = var.stddaacctsdns_name 
  private_dns_zone_ids = var.stddaacctsdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-stddacif" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-stddacif-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.stcif_prvtcon_name 
  private_connection_resource_id = module.storage-account-acctscif.id 
  subresource_names = var.stcifresource_name 
  dns_name = var.stcifdns_name 
  private_dns_zone_ids = var.stcifdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-funcddatx" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-funcddatx-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funcddatx_prvtcon_name 
  private_connection_resource_id = module.funcapp-fdxaccounts-ddatransactions.id 
  subresource_names = var.funcddatxresource_name 
  dns_name = var.funcddatxdns_name 
  private_dns_zone_ids = var.funcddatxdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-funcddaacts" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-funddacts-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funcddaacts_prvtcon_name 
  private_connection_resource_id = module.func-fdxaccounts-ddaaccounts.id 
  subresource_names = var.funcddaactsresource_name 
  dns_name = var.funcddaactsdns_name 
  private_dns_zone_ids = var.funcddaactsdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}

module "privateendpoint-funcddacif" {
  source  = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version = "1.0.12"
  privateendpointname            = "pe-funcddacif-fdxaccount-ebg-${var.env}-${var.loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup.name
  subnet_id                      = module.subnet-privateendpoint-fdx.subnet_id
  is_manual_connection           = var.is_manual_connection
   private_connection_name = var.funccif_prvtcon_name 
  private_connection_resource_id = module.func-fdxaccounts-cif.id 
  subresource_names = var.funccifresource_name 
  dns_name = var.funccifdns_name 
  private_dns_zone_ids = var.funccifdns_zone_id
  tags                           = local.tags
  depends_on = [module.subnet-privateendpoint-fdx]
}
