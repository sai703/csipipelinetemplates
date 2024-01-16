module "tdacloudcore-centralus" {
  source                                       = "./app"
  env                                          = var.env
  main_env_type                                = var.main_env_type
  loc                                          = var.loc
  kv_sku_name                                  = var.kv_sku_name
  kv_soft_delete_retention_days                = var.kv_soft_delete_retention_days
  kv_purge_protection_enabled                  = var.kv_purge_protection_enabled
  kv_enabled_for_deployment                    = var.kv_enabled_for_deployment
  kv_enabled_for_disk_encryption               = var.kv_enabled_for_disk_encryption
  kv_enabled_for_template_deployment           = var.kv_enabled_for_template_deployment
  kv_enable_rbac_authorization                 = var.kv_enable_rbac_authorization
  kv_monitoring_eventhub_name                  = var.kv_monitoring_eventhub_name
  kv_monitoring_eventhub_authorization_rule_id = var.kv_monitoring_eventhub_authorization_rule_id
  eh_sku_name                                  = var.eh_sku_name
  id_type                                      = var.id_type
  cosmos_sql_db                                = var.cosmos_sql_db
  failover_location                            = var.failover_location
  consistency_level                            = var.consistency_level
  container_attributes                         = var.container_attributes
  subnet_id_specscloudcore                     = var.subnet_id_specscloudcore
  subnet_id_translatescloudcore                = var.subnet_id_translatescloudcore
  subnet_id_tdatransactionscloudcore           = var.subnet_id_tdatransactionscloudcore
  subnet_id_tdaaccountscloudcore               = var.subnet_id_tdaaccountscloudcore
  subnet_id_customercloudcore                  = var.subnet_id_customercloudcore
  subnet_id_imagescloudcore                    = var.subnet_id_imagescloudcore
  subnet_id_transactionchangescloudcore        = var.subnet_id_transactionchangescloudcore
  subnet_id_accountchangescloudcore            = var.subnet_id_accountchangescloudcore
  subnet_id_rtscloudcore                       = var.subnet_id_rtscloudcore
  subnet_id_customerchangescloudcore           = var.subnet_id_customerchangescloudcore
  replication_type                             = var.replication_type
  account_tier                                 = var.account_tier
  appconfig_sku                                = var.appconfig_sku
  appconfig_identity_type                      = var.appconfig_identity_type
  role_data_receiver                           = var.role_data_receiver
  role_data_sender                             = var.role_data_sender
  role_kv_secret_user                          = var.role_kv_secret_user
  role_appconfig_data_reader                   = var.role_appconfig_data_reader
  cosmosurl_key                                = var.cosmosurl_key
  type                                         = var.type

  cosmosdbname_key                           = var.cosmosdbname_key
  evhns_tdacloudcore_key                     = var.evhns_tdacloudcore_key
  eventhub_accounts_key                      = var.eventhub_accounts_key
  eventhub_translates_key                    = var.eventhub_translates_key
  eventhub_transactions_key                  = var.eventhub_transactions_key
  eventhub_accountchanges_key                = var.eventhub_accountchanges_key
  dbname                                     = var.dbname
  identity_type                              = var.identity_type
  sku                                        = var.sku
  os_type                                    = var.os_type
  is_manual_connection                       = var.is_manual_connection
  appconfig_private_connection_name          = var.appconfig_private_connection_name
  appconfig_subresource_names                = var.appconfig_subresource_names
  storage_private_connection_name            = var.storage_private_connection_name
  storage_subresource_names                  = var.storage_subresource_names
  eventhubns_private_connection_name         = var.eventhubns_private_connection_name
  eventhubns_subresource_names               = var.eventhubns_subresource_names
  cosmosdb_private_connection_name           = var.cosmosdb_private_connection_name
  cosmosdb_subresource_names                 = var.cosmosdb_subresource_names
  funcapp_subresource_names                  = var.funcapp_subresource_names
  funtdatranscc_private_connection_name      = var.funtdatranscc_private_connection_name
  funtdaacctscc_private_connection_name      = var.funtdaacctscc_private_connection_name
  funcustcc_private_connection_name          = var.funcustcc_private_connection_name
  funtdatranslatescc_private_connection_name = var.funtdatranslatescc_private_connection_name
  keyvault_private_connection_name           = var.keyvault_private_connection_name
  keyvault_subresource_names                 = var.keyvault_subresource_names
  subnet_id_pe                               = var.subnet_id_pe
  rg_name                                    = var.rg_name
  tf_sa_client_id                            = var.arm_client_id
  tf_sa_client_secret                        = var.arm_client_secret
  network_subscription_id                    = var.network_subscription_id
  tf_sa_tenant_id                            = var.arm_tenant_id
  tf_sa_subscription_id                      = var.arm_subscription_id
  firewall_name                              = var.firewall_name
  # specscc_name		                   = var.specscc_name
  # specscc_rg_name		                 = var.specscc_rg_name
  # specscc_evhns_name 	               = var.specscc_evhns_name
  # transcc_name	                     = var.transcc_name
  # transcc_rg_name                    = var.transcc_rg_name
  # transcc_evhns_name                 = var.transcc_evhns_name
  # tdacustcc_name                     = var.tdacustcc_name
  # tdacustcc_rg_name                  = var.tdacustcc_rg_name
  # tdacustcc_evhns_name               = var.tdacustcc_evhns_name
  # tdatranscc_name                    = var.tdatranscc_name
  # tdatranscc_rg_name                 = var.tdatranscc_rg_name
  # tdatranscc_evhns_name              = var.tdatranscc_evhns_name
  # tdaacctcc_name                     = var.tdaacctcc_name
  # tdaacctcc_rg_name                  = var.tdaacctcc_rg_name
  # tdaacctcc_evhns_name               = var.tdaacctcc_evhns_name
}