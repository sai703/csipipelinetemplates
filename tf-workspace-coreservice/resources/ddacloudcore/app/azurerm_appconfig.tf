module "appconfig-ddacloudcore" {
  source                              = "app.terraform.io/csiseg/appconfig/csi"
  version                             = "1.0.1"
  name                                = "appcs-ddacloudcorecc-${var.env}${var.loc}"
  resource_group_name                 = module.resourcegroup-ddacloudcore.name
  location                            = module.resourcegroup-ddacloudcore.location
  sku                                 = var.appconfig_sku
  identity_type                       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  keys = [
    { key = var.cosmos_key 
      type = var.type
      value = var.cosmosurl },
    { key = var.cosmosdb_name
      type = var.type
      value = var.dbname },
    {
      key = var.evhns_ddacloudcore_key
      type = var.type
      value = module.eventhubns-ddacloudcore.name
    },
    {
      key = var.eventhub_accounts_key
      type = var.type
      value = module.eventhub-ddaaccountscloudcore.name
    },
    {
      key = var.eventhub_transactions_key
      type = var.type
      value = module.eventhub-ddatransactionscloudcore.name
    }
  ]
  tags = local.tags
}