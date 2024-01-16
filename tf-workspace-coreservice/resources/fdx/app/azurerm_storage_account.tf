module "storage-account-stfdxddatrx-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxddatrx${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type  
   tags = local.tags 
}

module "storage-account-stfdxddaaccts-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxddaaccts${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stfdxlnstrxx-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxlnstrxx${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stfdxlnsaccts-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxlnsaccts${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}



module "storage-account-stfdxtdatrx-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxtdatrx${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stfdxtdaaccts-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxtdaaccts${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stfdxcif-fdx" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stfdxcif${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-fdx.name
   resource_group_location = module.resourcegroup-fdx.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}
