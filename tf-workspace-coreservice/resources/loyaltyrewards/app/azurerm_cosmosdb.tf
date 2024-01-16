module "cosmos-db" {
  source                 = "app.terraform.io/csiseg/cosmos-db/csi"
  version                = "1.0.22"
  cosmos_db_account_name = "cosmos-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location               = module.resourcegroup.location
  resource_group_name    = module.resourcegroup.name
  cosmos_sql_db          = var.cosmos_sql_db
  failover_location      = var.failover_location
  consistency_level      = var.consistency_level
  container_attributes   = var.container_attributes
  identity_ids = [module.azuremanagedidentity.mi_id]
  # max_throughput  =  var.max_throughput
  tags                   = local.tags
  depends_on = [module.resourcegroup]
}