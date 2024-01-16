module "customercloudcore-cosmos-db" {
  source                 = "app.terraform.io/csiseg/cosmos-db/csi"
  version                = "1.0.7"
  cosmos_db_account_name = "cosmos-customercloudcore-ebg-${var.env}-${var.location}"
  location				       = var.location
  resource_group_name    = var.rg_name_ccc
  cosmos_sql_db          = var.cosmos_sql_db
  failover_location      = var.failover_location
  consistency_level      = var.consistency_level
  container_attributes   = var.container_attributes
  tags                   = local.tags_ccc
  depends_on = [module.rg-customercloudcore-ebg]
}
