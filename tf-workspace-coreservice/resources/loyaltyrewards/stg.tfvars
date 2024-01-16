# Environment
env = "stg"
loc = "centralus"


#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"
storage_container_lyltyrwds1_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds2_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds3_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds4_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds5_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds6_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds7_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
storage_container_lyltyrwds8_name = ["azurewebjobshosts", "azure-webjobs-hosts", "azure-webjobs-secrets" , "azurewebjobssecrets"]
container_access_type  = ["private", "private", "private", "private"]

#networkvariables
resource_group_name = "rg-coreservices-ebg-nonprod-centralus"
virtual_network_name = "vnet-coreservices-ebg-nonprod-centralus"
private_network_name = "vnet-coreservices-ebg-nonprod-centralus"

# cosmos db variables
cosmos_sql_db     = "loyalty-rewards"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [
    { cosmos_sql_container = "Accounts", partition_key_path = "/partitionKey", default_ttl = null},
        { cosmos_sql_container = "Drawings", partition_key_path = "/partitionKey", default_ttl = null},
        { cosmos_sql_container = "leases", partition_key_path = "/id", default_ttl = null},
        { cosmos_sql_container = "TransactionsByAccount", partition_key_path = "/partitionKey", default_ttl = -1},
        { cosmos_sql_container = "TransactionsByDate", partition_key_path = "/partitionKey", default_ttl = -1}
]
#  max_throughput = 2000
//identity = "FirstPartyIdentity"*/

#roles app
role_data_owner     = "App Configuration Data Owner"
role_keyvault_secret = "Key Vault Secrets Officer"
role_keyvault_admin = "Key Vault Administrator"
kv_secret_user = "Key Vault Secrets User"


#keyvault secrets
redis_db = "redis-cache-connection-string"
redis_string = "redis-loyaltyrewards-stg-centralus.redis.cache.windows.net:6380,password=riWhMNPlftcPH4FKqhaVxGvjkaMLbfqvHAzCaMIpWAg=,ssl=True,abortConnect=False"
cosmos_db = "cosmos-db-connection-string"
cosmos_string = "AccountEndpoint=https://cosmos-loyaltyrewards-ebg-stg-centralus.documents.azure.com:443/;AccountKey=O4X9htXbpNeItnhjAMmqYnDKEZvcnmatXsTyH8oKC6Ef53mGxq4vSM6yMvZXA2JHOWqchIA1fhx8ACDbWbldrw==;"
host_activity  = "service-bus-host-activity-connection-string"
host_activity_string = "Endpoint=sb://commonsegasbdev.servicebus.windows.net/;SharedAccessKeyName=loyaltyrewards;SharedAccessKey=yfuDbRJfDhB67ajKzo2a4+SaEG7ugWS0CQvAuzdqFuU=;EntityPath=host-activity"
host_post_activity  = "service-bus-host-activity-notification-connection-string"
host_post_activity_string = "Endpoint=sb://commonsegasbdev.servicebus.windows.net/;SharedAccessKeyName=loyaltyrewards;SharedAccessKey=vAs31UjE+h+svPGqz6vfw9YM78igmY7BJbnbksnS2CE=;EntityPath=host-posted-activity-notifications"

#functionapp variables
COSMOS_CONNECTION_STRING = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdstgcentralus;SecretName=cosmos-db-connection-string)"
 servicebus_transsubscr = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdstgcentralus;SecretName=service-bus-host-activity-connection-string)"
service_bus_transruns = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdstgcentralus;SecretName=service-bus-host-activity-notification-connection-string)"
subscriptionname = "loyaltyrewards-staging"

#user identity variables
data_actions = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
"Microsoft.DocumentDB/databaseAccounts/readMetadata",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/read",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/executeQuery",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/readChangeFeed",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/*",
"Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/*" ]


keyvault_actions = ["Microsoft.KeyVault/vaults/secrets/setSecret/action",
"Microsoft.KeyVault/vaults/secrets/readMetadata/action",
"Microsoft.KeyVault/vaults/secrets/getSecret/action",
"Microsoft.KeyVault/vaults/secrets/update/action",
"Microsoft.KeyVault/vaults/secrets/delete",
"Microsoft.KeyVault/vaults/secrets/recover/action"]

principal_id = "d6472e60-5d0c-4c53-8f46-2db08fad643a"
role_principal_id = "d6472e60-5d0c-4c53-8f46-2db08fad643a"
# object_id = "d6b8a766-cd5b-4cce-b59d-c723b515ff07"



assignable_scopes = ["/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9"]
scope = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/providers/Microsoft.Authorization/roleDefinitions/6ed72b47-dc64-4ce1-8822-61f90d38b017"


#app config variables

appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"

#app config  values

appconfig = "Identity:Authority"
appconfig_1 = "LoyaltyRewards:DatabaseName"
appconfig_2 = "DataStore:Url"
appconfig_value = "https://testidentity.csiweb.com"
appconfig_value_1 = "loyalty-rewards"
appconfig_value_2 = "https://cosmos-loyaltyrewards-ebg-stg-centralus.documents.azure.com:443/"
type = "kv"



#function app variables
identity_type = "UserAssigned"
sku           = "S1"

#keyvault variables
kv_sku_name                        = "standard"
kv_soft_delete_retention_days      = "90"
kv_purge_protection_enabled        = "false"
kv_enabled_for_deployment          = "true"
kv_enabled_for_disk_encryption     = "true"
kv_enabled_for_template_deployment = "true"
kv_enable_rbac_authorization       = "true"

#subnet variables

subnet_id_pe = ["10.225.123.192/27"]
subnet_id_account = ["10.225.112.240/29"]
subnet_id_drawing = ["10.225.113.240/29"]
subnet_id_transactionruns = ["10.225.114.240/29"]
subnet_id_transaction = ["10.225.115.240/29"]
subnet_id_transactionsubscr = ["10.225.116.240/29"]
subnet_id_winner = ["10.225.117.240/29"]
subnet_id_changefeedbyacc = ["10.225.118.240/29"]
subnet_id_changefeedbydate = ["10.225.119.240/29"]

#privateendpoint

is_manual_connection = "false"
cosmos_prvtcon_name = "cosmos-loyltyrwrdsstg-prvtconctname-centralus"
cosmosresource_name = [ "SQL" ]
cosmosdns_name = "privatelink_documents_azure_com"
cosmosdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.documents.azure.com"]
appconfig_prvtcon_name = "appconfig-loyltyrwrdsstg-prvtconctname-centralus"
appconfigresource_name = [ "configurationStores" ]
appconfigdns_name = "privatelink_azconfig_azure_com"
appconfigdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
# keyvault_prvtendpoint = "kv-fdx.prvtnendpoint_centralus"
keyvault_prvtcon_name = "kv-loyltyrwrdsstg-prvtconctname-centralus"
keyvaultresource_name = [ "vault" ]
keyvaultdns_name = "privatelink_vault_azure_com"
keyvaultdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
stddatx_prvtcon1_name = "stacc-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon2_name = "stdrwng-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon3_name = "sttrans-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon4_name = "sttrnsrun-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon5_name = "stwnnr-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon6_name = "sttrsubsr-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon7_name = "stchgbydt-loyltyrwrdsstg-prvtconctname-centralus"
stddatx_prvtcon8_name = "stchgbyacc-loyltyrwrdsstg-prvtconctname-centralus"
stddatxresource_name = ["blob"]
stddatxdns_name = "privatelink.blob.core.windows.net"
stddatxdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
funcaccount_prvtcon_name = "func-loyaltyrewards-stg-account-prvtcon-name"
funcaccountresource_name = [ "sites" ] 
funcaccountdns_name = "azurewebsites.net"
funcaccountdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcdrawing_prvtcon_name = "func-loyaltyrewards-stg-drawing-prvtcon-name"
funcdrawingresource_name = [ "sites" ] 
funcdrawingdns_name = "azurewebsites.net"
funcdrawingdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransaction_prvtcon_name = "func-loyaltyrewards-stg-transc-prvtcon-name"
functransactionresource_name = [ "sites" ] 
functransactiondns_name = "azurewebsites.net"
functransactiondns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransactionruns_prvtcon_name = "func-loyaltyrewards-stg-transcruns-prvtcon-name"
functransactionrunsresource_name = [ "sites" ] 
functransactionrunsdns_name = "azurewebsites.net"
functransactionrunsdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcwinner_prvtcon_name = "func-loyaltyrewards-stg-winner-prvtcon-name"
funcwinnerresource_name = [ "sites" ] 
funcwinnerdns_name = "azurewebsites.net"
funcwinnerdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransactionsubscr_prvtcon_name = "func-loyaltyrewards-stg-transsubscr-prvtcon-name"
functransactionsubscrresource_name = [ "sites" ] 
functransactionsubscrdns_name = "azurewebsites.net"
functransactionsubscrdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcchangefeedbydate_prvtcon_name = "func-loyaltyrewards-stg-chngfeedbydate-prvtcon-name"
funcchangefeedbydateresource_name = [ "sites" ] 
funcchangefeedbydatedns_name = "azurewebsites.net"
funcchangefeedbydatedns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcchangefeedbyacc_prvtcon_name = "func-loyaltyrewards-stg-chngfeedbyacc-prvtcon-name"
funcchangefeedbyaccresource_name = [ "sites" ] 
funcchangefeedbyaccdns_name = "azurewebsites.net"
funcchangefeedbyaccdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
