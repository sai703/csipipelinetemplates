module "storage-account-sttdaccspecscc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdaccspecs${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdacctranslatescc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdatrnslts${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdacctdatrxcc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdatdatrx${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdacctdaacctscc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdatdaacts${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-stddcustomerpecscc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stddcustpecs${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdaccimagescc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdaimages${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdacctrxchangescc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdatrxchg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdaccacctchangescc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdaacctchg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdaccrtscc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdaccrtscc${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-sttdcustomerchangescc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "sttdcustchgs${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}


# module "storage-container-sttdaccspecscc" {
#   source                = "app.terraform.io/csiseg/storage-container/csi"
#   version               = "1.0.11"
#   storage_account_name  = module.storage-account-sttdaccspecscc.name
#   container_list        = var.storage_container_name
#   container_access_type = var.container_access_type
# }