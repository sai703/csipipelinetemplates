# Environment
env = "stg"
loc = "centralus"

# Mandatory Tags
csi_project        = "Core Services"
csi_service        = "Core Services"
csi_dept           = "EBG"
csi_environment    = "stg"
csi_transformation = "True"

#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"
storage_container_name = ["inboundx9", "meridianrepair", "nupointrepair", "images"]
container_access_type  = ["private", "private", "private", "private"]


# cosmos db variables
cosmos_sql_db     = "items"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "Item_ById", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "Item_ByBankAccountSequenceDate", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "leases", partition_key_path = "/id" },
  { cosmos_sql_container = "Transaction_ByBankAccountSequenceDate", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "File_ByHash", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "Set_ById", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "Set_ByTransactionId", partition_key_path = "/partitionKey" },
{ cosmos_sql_container = "Image_ByAccountId", partition_key_path = "/partitionKey" }]
//identity = "FirstPartyIdentity"*/

#user identity variables
data_actions = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
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
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/*" ]
#Eventhub variables
eh_sku_name = "Standard"
id_type     = "UserAssigned"


#role_assignment variables
role_data_sender         = "Azure Event Hubs Data Sender"
role_storage_contributor = "Storage Blob Data Contributor"
role_data_owner          = "App Configuration Data Owner"


#private end point

appconfig_private_connection_name  = "AzureAppConfiguration"
//appconfig_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.AppConfiguration/configurationStores/appcs-imaging-ebg-stg-centralus"
appconfig_subresource_names = ["configurationStores"]
is_manual_connection = "false"
appconfig_dns_name = "privatelink.azconfig.io"
//appconfig_private_dns_zone_ids = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
storage_private_connection_name = "AzureStorage"
//storage_private_connection_resource_id =  "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Storage/storageAccounts/stimagingebgstgcentralus"
storage_subresource_names = ["blob"]
storage_dns_name = "privatelink.blob.core.windows.net"
//storage_private_dns_zone_ids = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
eventhubns_private_connection_name = "Azureeventhubns"
//eventhubns_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.EventHub/namespaces/evhns-imaging-ebg-stg-centralus"
eventhubns_subresource_names = ["namespace"]
eventhubns_dns_name = "privatelink.servicebus.windows.net"
//eventhubns_private_dns_zone_ids = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/privatelink.servicebus.windows.net"]
cosmosdb_private_connection_name = "Azurecosmosdb"
//cosmosdb_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.DocumentDB/databaseAccounts/cosmos-imaging-ebg-stg-centralus"
cosmosdb_subresource_names = ["sql"]
cosmosdb_dns_name = "privatelink.documents.azure.com"
//cosmosdb_private_dns_zone_ids = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/privatelink.documents.azure.com"]
funsetbyid_private_connection_name = "Azuresetbyidfunc"
//funsetbyid_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-setbyid-ebg-stg-centralus"
funitembyid_private_connection_name = "Azureitembyidfunc"
//funitembyid_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-ItemById-ebg-stg-centralus"
funtransid_private_connection_name = "Azuretransactionidfunc"
//funtransid_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-transaction-ebg-stg-centralus"
funtranssub_private_connection_name = "Azuretransubscriberfunc"
//funtranssub_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-TransactionSubscriber-ebg-stg-centralus"
funnupoint_private_connection_name = "Azurenupointfunc"
//funnupoint_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-NuPointException-ebg-stg-centralus"
funmeridian_private_connection_name = "Azuremeridianfunc"
//funmeridian_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-MeridianException-ebg-stg-centralus"
funx9sub_private_connection_name = "Azurex9subfunc"
//funx9sub_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-x9subscriber-ebg-stg-centralus"
funx9error_private_connection_name = "Azurex9errorfunc"
//funx9error_private_connection_resource_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-imaging-ebg-stg-centralus/providers/Microsoft.Web/sites/func-imaging-x9error-ebg-stg-centralus"
httpfunc_private_connection_name = "Azurehttpfunc"
funcapp_subresource_names = ["sites"]
funcapp_dns_name = "azurewebsites.net"
//funcapp_private_dns_zone_ids = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]



#app config variables

appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"
type                    = "kv"
dbname_key              = "Images:Cosmos:DatabaseName"
dbname                  = "items"
cosmosurl_key           = "Images:Cosmos:accountEndpoint"
cosmosurl               = "https://cosmos-imaging-ebg-stg-centralus.documents.azure.com:443/"
filestatuseh_key        = "Images:EventHub:FileStatusHubName"
filestatuseh            = "evh-imaging-fileprocessingstatus-ebg-stg-centralus"
itemeh_key              = "Images:EventHub:ItemsHubName"
itemeh                  = "evh-imaging-item-ebg-stg-centralus"
processerroeh_key       = "Images:EventHub:ProcessingErrorsHubName"
processerroreh          = "evh-imaging-errors-ebg-stg-centralus"
transmatcheh_key        = "Images:EventHub:TransactionMatchesHubName"
transmatcheh            = "evh-imaging-transactionmatching-ebg-stg-centralus"
ehns_key                = "Images:EventHub:fullyQualifiedNamespace"
ehns                    = "evhns-imaging-ebg-stg-centralus.servicebus.windows.net"
storageblob_key         = "Images:Storage:ImageBlobContainer"
storageblob             = "images"
storageurl_key          = "Images:Storage:serviceUri"
storage_bloburi         = "https://stimagingebgstgcentralus.blob.core.windows.net/"
identityauth_key        = "Identity:Authority"
identityauth            = "testidentity.csiweb.com"

#function app variables
identity_type = "UserAssigned"
sku           = "S1"

#subnet variables
subnet_id_SetById               = ["10.225.124.0/29"]
subnet_id_SetByTransactionId    = ["10.225.124.8/29"]
subnet_id_ItemById              = ["10.225.124.16/29"]
subnet_id_TransactionSubscriber = ["10.225.124.24/29"]
subnet_id_NuPointException      = ["10.225.124.32/29"]
subnet_id_MeridianException     = ["10.225.124.40/29"]
subnet_id_x9                    = ["10.225.124.48/29"]
subnet_id_x9Error               = ["10.225.124.56/29"]
subnet_id_httpfun               = ["10.225.124.64/29"]
subnet_id_PE                    = ["10.225.124.96/27"]


# data variables

/*ddaeh_name    = "evh-ddatransactionscloudcore-stgcentralus"
ddaeh_rg_name = "rg-ddacloudcore-stg-centralus"
ddaen_ns_name = "evhns-ddacloudcore-stgcentralus"*/

# subnet route table variables

firewall_name               = "FirewallNetOpsNetworkNonProdCentralUS"
firewall_resourcegroup_name = "RGNetOpsNetworkNonprodCentralUS"
