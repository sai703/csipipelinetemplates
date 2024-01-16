module "storage-account-ststmtsccspecscc-statementscloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "ststmtsccspecscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-statementscloudcore.name
   resource_group_location = module.resourcegroup-statementscloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type  
   tags = local.tags 
}

module "storage-account-ststmtsccddaacctscc-statementscloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stmtsccddaaccts${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-statementscloudcore.name
   resource_group_location = module.resourcegroup-statementscloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-ststmtcfprovidermap-statementscloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stmtcfprovidemap${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-statementscloudcore.name
   resource_group_location = module.resourcegroup-statementscloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}
