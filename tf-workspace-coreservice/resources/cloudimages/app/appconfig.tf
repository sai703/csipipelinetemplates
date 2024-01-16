module "appconfig" {
  source                              = "app.terraform.io/csiseg/appconfig/csi"
  version                             = "1.0.1"
  name                                = "appcs-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.appconfig_sku
  identity_type                       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  keys = [
    /*{ key  = var.storagecontainer_key
      type = var.type
    value = var.container_name },
    { key = var.storage_key
      type = var.type 
      value = var.storageurl},    
    { key  = var.cosmos_key
      type = var.type
    value = var.cosmosurl },
    { key  = var.cosmosdb_name
      type = var.type
    value = var.dbname }*/
    { key = var.dbname_key
     type = var.type
     value = var.dbname },
    { key = var.cosmosurl_key
      type = var.type
      value = var.cosmosurl },
    { key = var.filestatuseh_key
      type = var.type
      value = var.filestatuseh },
    { key = var.itemeh_key
     type = var.type
     value = var.itemeh },
    { key = var.processerroeh_key
      type = var.type
      value = var.processerroreh },
    { key = var.transmatcheh_key
      type = var.type
      value = var.transmatcheh },
    { key = var.ehns_key
      type = var.type 
      value = var.ehns },
    { key = var.storageblob_key
      type = var.type 
      value = var.storageblob},
    { key = var.storageurl_key
      type = var.type
      value = var.storage_bloburi },
    { key = var.identityauth_key
      type = var.type
      value = var.identityauth }


  ]
  tags       = local.tags
  depends_on = [module.resourcegroup , module.storage-account]
  
}
