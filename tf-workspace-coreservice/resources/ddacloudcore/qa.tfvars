# Environment
env = "qa"
loc = "centralus"
short_loc = "cus"

# Mandatory Tags
csi_project        = "Core Services"
csi_service        = "Core Services"
csi_dept           = "EBG"
csi_environment    = "qa"
csi_transformation = "True"

#app config variables
appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"
type                    = "kv"
cosmos_key    = "DDA:Cosmos:accountEndpoint"
cosmosurl     = "https://cosmos-ddacloudcore-qa-centralus.documents.azure.com:443/"
cosmosdb_name = "DDA:Cosmos:cosmosdatabase"
dbname        = "items"
evhns_ddacloudcore_key = "DDA:CC:EventHub:FullyQualifiedNamespace"
eventhub_accounts_key = "AzureEventHubs:ddaaccountscloudcore:EventHubName"
eventhub_transactions_key= "AzureEventHubs:ddatransactionscloudcore:EventHubName"

# cosmos db variables
cosmos_sql_db          = "items"
failover_location      = "eastus2"
consistency_level      = "Strong"
container_attributes = [{ cosmos_sql_container = "account", partition_key_path = "/partitionKey" },
    { cosmos_sql_container = "accountSpec", partition_key_path = "/application" },
    { cosmos_sql_container = "accountTranslate", partition_key_path = "/partitionKey" },
    { cosmos_sql_container = "accountTransaction", partition_key_path = "/partitionKey" }]

#Eventhub variables
sku_name = "Standard"
id_type  = "UserAssigned"

#user identity variables
data_action = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
//"Microsoft.DocumentDB/databaseAccounts/services/read",
//"Microsoft.DocumentDB/databaseAccounts/services/write",
//"Microsoft.DocumentDB/databaseAccounts/services/delete",
"Microsoft.DocumentDB/databaseAccounts/readMetadata",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/executeQuery",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/readChangeFeed",
//"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/write",
//"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/delete",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/*",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/*"]

#roleassignment
role_app_config_data_reader = "App Configuration Data Reader"
role_data_receiver = "Azure Event Hubs Data Sender"
role_data_sender = "Azure Event Hubs Data Receiver"
role_data_Owner  = "Azure Event Hubs Data Owner"

#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"

#function app variables
sku = "S1"
os_type = "Windows"
identity_type = "UserAssigned"
appconfig_connectionstring = "Endpoint=https://appcs-ddacloudcorecc-qacentralus.azconfig.io;Id=CCLp-l4-s0:4oOKg5RI/HXsjdxzpP8s;Secret=9Ze05ob9gMi4JV9b/YaGXVBWPSNNrQMDKMgznsfLJDs="


#vnet
vnet_rg   = "rg-coreservices-ebg-nonprod-centralus"
vnet_name = "vnet-coreservices-ebg-nonprod-centralus"

#subnet ip_prefixes
enforce_private_link_endpoint_network_policies         = "true"
ddacloudcore_specscloudcore_subnet_prefix              = ["10.225.113.8/29"]
ddacloudcore_translatescloudcore_subnet_prefix         = ["10.225.114.8/29"]
ddacloudcore_ddatransactionscloudcore_subnet_prefix    = ["10.225.123.8/29"]
ddacloudcore_ddaaccountscloudcore_subnet_prefix        = ["10.225.124.8/29"]
ddacloudcore_runningbalance_subnet_prefix              = ["10.225.125.8/29"]
ddacloudcore_imagescloudcore_subnet_prefix             = ["10.225.126.8/29"]
ddacloudcore_transactionchangescloudcore_subnet_prefix = ["10.225.117.8/29"]
ddacloudcore_accountchangescloudcore_subnet_prefix     = ["10.225.121.8/29"]
ddacloudcore_rtscloudcore_subnet_prefix                = ["10.225.112.8/29"]
ddacloudcore_specschangescloudcore_subnet_prefix       = ["10.225.122.8/29"]
ddacloudcore_ddamemocloudcore_subnet_prefix            = ["10.225.114.144/28"]
ddacloudcore_rtsnewaccountscloudcore_subnet_prefix     = ["10.225.114.160/28"]
ddacloudcore_rtsbalancescloudcore_subnet_prefix        = ["10.225.116.80/28"]
ddacloudcore_translateschangescloudcore_subnet_prefix  = ["10.225.117.80/28"]
subnet_id_PE                                           = ["10.225.127.64/26"]


#Private EndPoint
  firewall_name                                          = "FirewallNetOpsNetworkNonProdCentralUS"
  firewall_resourcegroup_name                            = "RGNetOpsNetworkNonprodCentralUS"
  appconfig_subresource_names                            = ["configurationStores"]
  appconfig_private_connection_name                      = "AzureAppConfiguration"
  is_manual_connection                                   = "false"
  appconfig_dns_name                                     = "privatelink.azconfig.io"
  cosmosdb_private_connection_name                       = "Azurecosmosdb"
  cosmosdb_subresource_names                             = ["sql"]
  cosmosdb_dns_name                                      = "privatelink.documents.azure.com"
  eventhubns_private_connection_name                     = "Azureeventhubns"
  eventhubns_subresource_names                           = ["namespace"]
  eventhubns_dns_name                                    = "privatelink.servicebus.windows.net"
  stgstddaccspecscc_storage_private_connection_name      = "AzureStorage"
  stddacctranslatescc_storage_private_connection_name    = "AzureStorage"
  stddaccddatrxcc_storage_private_connection_name        = "AzureStorage"
  stddaccddaacctscc_storage_private_connection_name      = "AzureStorage"
  stddaccrunbal_storage_private_connection_name          = "AzureStorage"
  stddaccimagescc_storage_private_connection_name        = "AzureStorage"
  stddacctrxchangescc_storage_private_connection_name    = "AzureStorage"
  stddaccacctchangescc_storage_private_connection_name   = "AzureStorage"
  stddaccrtscc_storage_private_connection_name           = "AzureStorage"
  stddacctspecchangescc_storage_private_connection_name  = "AzureStorage"
  stddaccddamemocc_storage_private_connection_name       = "AzureStorage"
  stddaccrtsnewacctcc_storage_private_connection_name    = "AzureStorage"
  stddaccrtsbalancescc_storage_private_connection_name   = "AzureStorage"
  stddacctxlateschangescc_storage_private_connection_name= "AzureStorage"
  storage_subresource_names                              = ["blob"]
  storage_dns_name                                       = "privatelink.blob.core.windows.net"
  funcspecscloudcore_private_connection_name             = "Azuresetbyfuncspecscloudcorefunc"
  functranslatescloudcore_private_connection_name        = "Azuresetbyfunctranslatescloudcorefunc"
  funcddatransactionscloudcore_private_connection_name   = "Azuresetbyfuncddatransactionscloudcorefunc"
  funcddaaccountscloudcore_private_connection_name       = "Azuresetbyfuncddaaccountscloudcorefunc"
  funcrunningbalance_private_connection_name             = "Azuresetbyfuncrunningbalancefunc"
  funcimagescloudcore_private_connection_name            = "Azuresetbyfuncimagescloudcorefunc"
  functransactionchangescloudcore_private_connection_name = "Azuresetbyfunctransactionchangescloudcorefunc"
  funcaccountchangescloudcore_private_connection_name    = "Azuresetbyfuncaccountchangescloudcorefunc"
  funcrtscloudcore_private_connection_name               = "Azuresetbyfuncrtscloudcorefunc"
  funcspecschangescloudcore_private_connection_name      = "Azuresetbyfuncchangescloudcorecc"
  funcddamemocloudcore_private_connection_name           = "Azuresetbyfuncddamemocloudcorecc"
  funcrtsnewaccountscloudcore_private_connection_name    = "AzureSetbyrtsnewaccountscloudcorecc"
  funcrtsbalancescloudcore_private_connection_name       = "AzureSetbyrtsbalancescloudcorecc"
  functranslateschangescloudcore_private_connection_name = "AzuresetBytranslateschangescloudcorecc"
  funcapp_subresource_names                              = ["sites"]
  funcapp_dns_name                                       = "azurewebsites.net"