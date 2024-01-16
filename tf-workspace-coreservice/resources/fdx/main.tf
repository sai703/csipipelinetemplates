module "fdx-centralus" {
  source                                         = "./app"
  env                                            = var.env
  loc                                            = var.loc
  short_loc                                      = var.short_loc
  cosmos_sql_db                                  = var.cosmos_sql_db
  failover_location                              = var.failover_location
  consistency_level                              = var.consistency_level
  container_attributes                           = var.container_attributes
  appconfig_sku                                  = var.appconfig_sku
  appconfig_identity_type                        = var.appconfig_identity_type
  cosmos_key                                     = var.cosmos_key
  type                                           = var.type
  cosmosurl                                      = var.cosmosurl
  cosmosdb_name                                  = var.cosmosdb_name
  dbname                                         = var.dbname
  sku_name                                       = var.sku_name
  id_type                                        = var.identity_type
  data_action                                    = var.data_action
  role_app_config_data_reader                    = var.role_app_config_data_reader
  role_data_receiver                             = var.role_data_receiver
  role_data_sender                               = var.role_data_sender
  account_tier                                   = var.account_tier
  replication_type                               = var.replication_type
  sku                                            = var.sku
  os_type                                        = var.os_type
  identity_type                                  = var.identity_type
  appconfig_connectionstring                     = var.appconfig_connectionstring
  tf_sa_client_id                                = var.tf_sa_client_id
  tf_sa_client_secret                            = var.tf_sa_client_secret
  tf_sa_subscription_id                          = var.tf_sa_subscription_id
  tf_sa_tenant_id                                = var.tf_sa_tenant_id
  network_subscription_id                        = var.network_subscription_id
  vnet_rg                                        = var.vnet_rg
  vnet_name                                      = var.vnet_name
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
  fdx_ddatransactions_subnet_prefix              = var.fdx_ddatransactions_subnet_prefix
  fdx_ddaaccounts_subnet_prefix                  = var.fdx_ddaaccounts_subnet_prefix
  fdx_lnstransactions_subnet_prefix              = var.fdx_lnstransactions_subnet_prefix
  fdx_lnsaccounts_subnet_prefix                  = var.fdx_lnsaccounts_subnet_prefix
  fdx_tdatransactions_subnet_prefix              = var.fdx_tdatransactions_subnet_prefix
  fdx_tdaaccounts_subnet_prefix                  = var.fdx_tdaaccounts_subnet_prefix
  fdx_cif_subnet_prefix                          = var.fdx_cif_subnet_prefix
  firewall_name                                  = var.firewall_name
  firewall_resourcegroup_name                    = var.firewall_resourcegroup_name
  appconfig_private_connection_name              = var.appconfig_private_connection_name
  appconfig_subresource_names                    = var.appconfig_subresource_names
  is_manual_connection                           = var.is_manual_connection
  appconfig_dns_name                             = var.appconfig_dns_name
  eventhubns_private_connection_name             = var.eventhubns_private_connection_name
  eventhubns_subresource_names                   = var.eventhubns_subresource_names
  eventhubns_dns_name                            = var.eventhubns_dns_name
  cosmosdb_private_connection_name               = var.cosmosdb_private_connection_name
  cosmosdb_subresource_names                     = var.cosmosdb_subresource_names
  cosmosdb_dns_name                              = var.cosmosdb_dns_name
  stfdxddatrx_storage_private_connection_name    = var.stfdxddatrx_storage_private_connection_name
  stfdxddaaccts_storage_private_connection_name  = var.stfdxddaaccts_storage_private_connection_name
  stfdxlnstrxx_storage_private_connection_name    = var.stfdxlnstrxx_storage_private_connection_name
  stfdxlnsaccts_storage_private_connection_name  = var.stfdxlnsaccts_storage_private_connection_name
  stfdxtdatrx_storage_private_connection_name    = var.stfdxtdatrx_storage_private_connection_name
  stfdxtdaaccts_storage_private_connection_name  = var.stfdxtdaaccts_storage_private_connection_name
  stfdxcif_storage_private_connection_name       = var.stfdxcif_storage_private_connection_name
  storage_subresource_names                      = var.storage_subresource_names
  storage_dns_name                               = var.storage_dns_name
  funcddatransactions_private_connection_name    = var.funcddatransactions_private_connection_name
  funcddaaccounts_private_connection_name        = var.funcddaaccounts_private_connection_name
  funclnstransactions_private_connection_name    = var.funclnstransactions_private_connection_name
  funclnsaccounts_private_connection_name        = var.funclnsaccounts_private_connection_name
  functdatransactions_private_connection_name    = var.functdatransactions_private_connection_name
  functdaaccounts_private_connection_name        = var.functdaaccounts_private_connection_name
  funccif_private_connection_name                = var.funccif_private_connection_name
  funcapp_subresource_names                      = var.funcapp_subresource_names
  funcapp_dns_name                               = var.funcapp_dns_name
  subnet_id_PE                                   = var.subnet_id_PE
}