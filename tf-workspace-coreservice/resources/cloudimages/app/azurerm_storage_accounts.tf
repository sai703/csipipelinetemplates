module "storage-account" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagingebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup] 
}

module "storage-container" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.12"
  storage_account_name  = module.storage-account.name
  container_list        = var.storage_container_name
  container_access_type = var.container_access_type
}

module "storage-account-item-byID" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagitmebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-setbyid" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagsetebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-transaction" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagtraebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-transactionsub" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagtrsebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
}

module "storage-account-meridianexception" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagmerebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-nupointexception" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagnupebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-x9sub" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagx9sebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-x9error" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimagx9eebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}

module "storage-account-httpfunc" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.16"
  storeaccount_name       = "stimghttpebg${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on              = [module.resourcegroup]
}