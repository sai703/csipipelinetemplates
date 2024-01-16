module "storage-account-stgstddaccspecscc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccspecscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type  
   tags = local.tags 
}

module "storage-account-stddacctranslatescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "ddacctranslatescc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccddatrxcc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccddatrxcc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccddaacctscc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccddaacctscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccrunbal-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccrunbal${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccimagescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccimagescc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddacctrxchangescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stcctrxchangescc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccacctchangescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaacctchangescc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccrtscc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccrtscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccddamemocc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddaccddamemocc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccrtsnewacctcc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stdacrtsnewactcc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddaccrtsbalancescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stdacrtsbalncscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddactxlatschngscc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stdactxlatschgscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}

module "storage-account-stddacctspecchangescc-ddacloudcore" {
   source                  = "app.terraform.io/csiseg/storageaccount/csi"
   version                 = "1.0.16"
   storeaccount_name       = "stddacctspeccscc${var.env}${var.short_loc}"
   resource_group_name     = module.resourcegroup-ddacloudcore.name
   resource_group_location = module.resourcegroup-ddacloudcore.location
   account_tier            = var.account_tier
   replication_type        = var.replication_type
   tags = local.tags 
}