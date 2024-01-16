#Environment
env           = "qa"
loc           = "centralus"
main_env_type = "nonprod"

#Keyvault variables
kv_sku_name                        = "standard"
kv_soft_delete_retention_days      = "90"
kv_purge_protection_enabled        = "false"
kv_enabled_for_deployment          = "true"
kv_enabled_for_disk_encryption     = "true"
kv_enabled_for_template_deployment = "true"
kv_enable_rbac_authorization       = "true"
kv_monitoring_eventhub_name                  = "evh-core-services-np-centralus"
kv_monitoring_eventhub_authorization_rule_id = "/subscriptions/7477239c-4fc1-48ea-8d94-5206aeaa1ed4/resourceGroups/rg-csi-evh-np-centralus/providers/Microsoft.EventHub/namespaces/evhns-csi-np-centralus/authorizationRules/evhns-authrule-csi-np-centralus"

#Eventhub variables
eh_sku_name = "Standard"
id_type     = "UserAssigned"

#Cosmos DB variables
cosmos_sql_db     = "accounts"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "account", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "accountSpec", partition_key_path = "/application" },
  { cosmos_sql_container = "accountTranslate", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "accountTransaction", partition_key_path = "/partitionKey" },
{ cosmos_sql_container = "customer", partition_key_path = "/partitionKey" }]

#Subnet variables

subnet_id_specscloudcore              = ["10.225.119.88/29"]
subnet_id_translatescloudcore         = ["10.225.113.168/29"]
subnet_id_tdatransactionscloudcore    = ["10.225.115.96/29"]
subnet_id_tdaaccountscloudcore        = ["10.225.114.72/29"]
subnet_id_customercloudcore           = ["10.225.119.80/29"]
subnet_id_imagescloudcore             = ["10.225.119.40/29"]
subnet_id_transactionchangescloudcore = ["10.225.119.48/29"]
subnet_id_accountchangescloudcore     = ["10.225.115.80/29"]
subnet_id_rtscloudcore                = ["10.225.119.64/29"]
subnet_id_customerchangescloudcore    = ["10.225.119.72/29"]
subnet_id_pe                          = ["10.225.120.128/27"]

#Storage account variables

replication_type = "GRS"
account_tier     = "Standard"

#App config variables

appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"
type                    = "kv"
cosmosurl_key           = "TDACloudCore:CosmosUrl"

cosmosdbname_key            = "TDACloudCore:CosmosDatabaseName"
dbname                      = "accounts"
evhns_tdacloudcore_key      = "TDA:CC:EventHub:FullyQualifiedNamespace"
eventhub_accounts_key       = "AzureEventHubs:tdaaccountscloudcore:EventHubName"
eventhub_translates_key     = "AzureEventHubs:tdatranslatescloudcore:EventHubName"
eventhub_transactions_key   = "AzureEventHubs:tdatransactionscloudcore:EventHubName"
eventhub_accountchanges_key = "AzureEventHubs:tdaaccountchangescloudcore:EventHubName"

#Role assignment variables

role_data_receiver         = "Azure Event Hubs Data Receiver"
role_data_sender           = "Azure Event Hubs Data Sender"
role_kv_secret_user        = "Key Vault Secrets User"
role_appconfig_data_reader = "App Configuration Data Reader"

#Function app variables

identity_type = "UserAssigned"
sku           = "S1"
os_type       = "Windows"

#Private endpoint variables

is_manual_connection                       = "false"
appconfig_private_connection_name          = "AzureAppConfiguration"
appconfig_subresource_names                = ["configurationStores"]
storage_private_connection_name            = "AzureStorage"
storage_subresource_names                  = ["blob"]
eventhubns_private_connection_name         = "Azureeventhubns"
eventhubns_subresource_names               = ["namespace"]
cosmosdb_private_connection_name           = "Azurecosmosdb"
cosmosdb_subresource_names                 = ["sql"]
funcapp_subresource_names                  = ["sites"]
funtdatranscc_private_connection_name      = "Azurefunctdatranscc"
funtdaacctscc_private_connection_name      = "Azurefunctdaacctscc"
funcustcc_private_connection_name          = "Azurefunctdacustcc"
keyvault_private_connection_name           = "AzureKeyVault"
keyvault_subresource_names                 = ["vault"]
funtdatranslatescc_private_connection_name = "Azurefunctdatranslatecc"
funtdaaccountscc_private_connection_name   = "Azurefunctdaaccountscc"


#Data sources variables

rg_name       = "RGNetOpsNetworkNonProdCentralUS"
firewall_name = "FirewallNetOpsNetworkNonProdCentralUS"
# specscc_name		      = "evh-specscloudcore"
# specscc_rg_name		    = "rg-specscloudcore-ebg-sbx-eastus2"
# specscc_evhns_name 	  = "evhns-specscloudcore-ebg-sbx-eastus2"
# transcc_name	        = "evh-translatescloudcore-ebg-dev-centralus"
# transcc_rg_name       = "rg-translatescloudcore-ebg-dev-centralus"
# transcc_evhns_name    = "evhns-translatescloudcore-ebg-dev-centralus"
# tdacustcc_name        = "evh-tdaacustomerscore"
# tdacustcc_rg_name     = "rg-tdacore-ebg-sbx-eastus2"
# tdacustcc_evhns_name  = "evhns-tdacore-ebg-sbx-eastus2"
# tdatranscc_name       = "evh-tdatransactionscore"
# tdatranscc_rg_name    = "rg-tdacore-ebg-sbx-eastus2"
# tdatranscc_evhns_name = "evhns-tdacore-ebg-sbx-eastus2"
# tdaacctcc_name        = "evh-tdaaccountscore"
# tdaacctcc_rg_name     = "rg-tdacore-ebg-sbx-eastus2"
# tdaacctcc_evhns_name  = "evhns-tdacore-ebg-sbx-eastus2"