module "customercloudcore" {
  source                      = "./app"
  env                         = var.env
  cosmos_sql_db               = var.cosmos_sql_db
  failover_location           = var.failover_location
  consistency_level           = var.consistency_level
  container_attributes        = var.container_attributes
  replication_type            = var.replication_type
  account_tier                = var.account_tier
  location                    = var.location
  rg_name_cc                  = var.rg_name_cc
  rg_name_ccc                 = var.rg_name_ccc
  storage_container_name      = var.storage_container_name
  container_access_type       = var.container_access_type
  tags_cc                     = var.tags_cc
  tags_ccc                    = var.tags_ccc
  role_appcfg_data_reader     = var.role_appcfg_data_reader
  role_evh_data_receiver      = var.role_evh_data_receiver
  subnet_id_customercloudcore = var.subnet_id_customercloudcore
  identity_type               = var.identity_type
}