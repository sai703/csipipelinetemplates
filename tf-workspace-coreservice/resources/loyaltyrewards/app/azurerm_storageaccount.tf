module "storage-account-loyaltyrewards1" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdacc${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards1" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards1.name
  container_list        = var.storage_container_lyltyrwds1_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards2" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrddrwng${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards2" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards2.name
  container_list        = var.storage_container_lyltyrwds2_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards3" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdtrans${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards3" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards3.name
  container_list        = var.storage_container_lyltyrwds3_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards4" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdtrrun${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards4" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards4.name
  container_list        = var.storage_container_lyltyrwds4_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards5" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdwnr${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards5" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards5.name
  container_list        = var.storage_container_lyltyrwds5_name
  container_access_type = var.container_access_type
}


module "storage-account-loyaltyrewards6" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdtrsubc${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards6" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards6.name
  container_list        = var.storage_container_lyltyrwds6_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards7" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdchgdt${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards7" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards7.name
  container_list        = var.storage_container_lyltyrwds7_name
  container_access_type = var.container_access_type
}

module "storage-account-loyaltyrewards8" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stlyrdchgaac${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-loyaltyrewards8" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-loyaltyrewards8.name
  container_list        = var.storage_container_lyltyrwds8_name
  container_access_type = var.container_access_type
}