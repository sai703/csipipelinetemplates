module "appconfig" {
  source                              = "app.terraform.io/csiseg/appconfig/csi"
  version                             = "1.0.1"
  name                                = "appcs-tdacloudcore-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.appconfig_sku
  identity_type                       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  keys = [
    { key  = var.cosmosurl_key
      type = var.type
    value = module.cosmos-db.cosmosdb_endpoint },

    { key  = var.cosmosdbname_key
      type = var.type
    value = var.dbname },
    {
      key   = var.evhns_tdacloudcore_key
      type  = var.type
      value = module.eventhubns.name
    },
    {
      key   = var.eventhub_accounts_key
      type  = var.type
      value = module.eventhub-tdaaccountscloudcore.name
    },
    {
      key   = var.eventhub_transactions_key
      type  = var.type
      value = module.eventhub-tdatransactionscloudcore.name
    },
    {
      key   = var.eventhub_accountchanges_key
      type  = var.type
      value = module.eventhub-tdaaccountchangescloudcore.name
    },
    {
      key   = var.eventhub_translates_key
      type  = var.type
      value = module.eventhub-tdatranslatescloudcore.name
    }

  ]
  tags = local.tags
}