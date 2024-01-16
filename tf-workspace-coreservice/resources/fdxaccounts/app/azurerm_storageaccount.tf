module "storage-account-ddatrx" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.13"
  storeaccount_name       = "stfdxddatrx${var.env}${var.loc}"
  resource_group_name     = module.resourcegroup.name
  resource_group_location = module.resourcegroup.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags
  depends_on = [module.resourcegroup]
}

module "storage-container-ddatrx" {
  source                = "app.terraform.io/csiseg/storage-container/csi"
  version               = "1.0.10"
  storage_account_name  = module.storage-account-ddatrx.name
  container_list        = var.storage_container_ddatrx_name
  container_access_type = var.container_access_type
}

module "storage-account-ddaaccts" {
    source                  = "app.terraform.io/csiseg/storageaccount/csi"
    version                 = "1.0.13"
    storeaccount_name       = "stfdxddaacct${var.env}${var.loc}"
    resource_group_name     = module.resourcegroup.name
    resource_group_location = module.resourcegroup.location
    account_tier            = var.account_tier
    replication_type        = var.replication_type
    tags                    = local.tags
    depends_on = [module.resourcegroup]
  }
  
  module "storage-container-ddaaccts" {
    source                = "app.terraform.io/csiseg/storage-container/csi"
    version               = "1.0.10"
    storage_account_name  = module.storage-account-ddaaccts.name
    container_list        = var.storage_container_ddaaccts_name
    container_access_type = var.container_access_type
  }

  module "storage-account-acctscif" {
    source                  = "app.terraform.io/csiseg/storageaccount/csi"
    version                 = "1.0.13"
    storeaccount_name       = "stfdxcif${var.env}${var.loc}"
    resource_group_name     = module.resourcegroup.name
    resource_group_location = module.resourcegroup.location
    account_tier            = var.account_tier
    replication_type        = var.replication_type
    tags                    = local.tags
    depends_on = [module.resourcegroup]
  }
  
  module "storage-container-acctscif" {
    source                = "app.terraform.io/csiseg/storage-container/csi"
    version               = "1.0.10"
    storage_account_name  = module.storage-account-acctscif.name
    container_list        = var.storage_container_acctscif_name
    container_access_type = var.container_access_type
  }