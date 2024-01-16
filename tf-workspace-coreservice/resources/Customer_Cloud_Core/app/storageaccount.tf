module "customercloudcore-storage-account" {
  source                  = "app.terraform.io/csiseg/storageaccount/csi"
  version                 = "1.0.13"
  storeaccount_name       = "customercldcre${var.location}"
  resource_group_name     = var.rg_name_ccc
  resource_group_location = var.location
  account_tier            = var.account_tier
  replication_type        = var.replication_type
  tags                    = local.tags_ccc
}


