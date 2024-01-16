module "cosmosdb-ddacloudcore" {
  source                 = "app.terraform.io/csiseg/cosmos-db/csi"
  version                = "1.0.7"
  cosmos_db_account_name = "cosmos-ddacloudcore-${var.env}-${var.loc}"
  location               = module.resourcegroup-ddacloudcore.location
  resource_group_name    = module.resourcegroup-ddacloudcore.name
  cosmos_sql_db          = var.cosmos_sql_db
  failover_location      = var.failover_location
  consistency_level      = var.consistency_level
  container_attributes   = var.container_attributes
  tags = local.tags
}
