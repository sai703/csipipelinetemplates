module "appconfig-fdx" {
  source                              = "app.terraform.io/csiseg/appconfig/csi"
  version                             = "1.0.1"
  name                                = "appcs-fdx-${var.env}${var.loc}"
  resource_group_name                 = module.resourcegroup-fdx.name
  location                            = module.resourcegroup-fdx.location
  sku                                 = var.appconfig_sku
  identity_type                       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  keys = [
    { key = var.cosmos_key 
      type = var.type
      value = var.cosmosurl },
    { key = var.cosmosdb_name
      type = var.type
      value = var.dbname } 
  ]
  tags = local.tags
}