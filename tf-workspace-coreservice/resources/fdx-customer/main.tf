module "fdxcustomer" {
  source                       = "./app"
  env                          = var.env
  cosmos_sql_db                = var.cosmos_sql_db
  failover_location            = var.failover_location
  consistency_level            = var.consistency_level
  container_attributes         = var.container_attributes
  replication_type             = var.replication_type
  account_tier                 = var.account_tier
  location                     = var.location
  rg_name                      = var.rg_name
  storage_container_name       = var.storage_container_name
  container_access_type        = var.container_access_type
  tags                         = var.tags
  role_appcfg_data_reader      = var.role_appcfg_data_reader
  subnet_id_fdxcustomer        = var.subnet_id_fdxcustomer
  identity_type                = var.identity_type
}
