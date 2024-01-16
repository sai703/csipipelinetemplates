# Environment
env = "prd"
loc = "centralus"

#loganalytics
loganalytics_name = "lgwkpccoresrvcprodcentralus"
loganalytics_resource_group = "rg-coreservices-ebg-prod-centralus"

# subnet route table variables
route_env = "prod"
firewall_name               = "FirewallNetOpsNetworkProdCentralUS"
firewall_resourcegroup_name = "RGNetOpsNetworkprodCentralUS"


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
resource_group_name = "rg-coreservices-ebg-prod-centralus"
virtual_network_name = "vnet-coreservices-ebg-prod-centralus"
private_network_name = "vnet-coreservices-ebg-prod-centralus"

# cosmos db variables
cosmos_sql_db     = "loyalty-rewards"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [
    { cosmos_sql_container = "Accounts", partition_key_path = "/partitionKey", default_ttl = null},
        { cosmos_sql_container = "Drawings", partition_key_path = "/partitionKey", default_ttl = null},
        { cosmos_sql_container = "leases", partition_key_path = "/id", default_ttl = null},
        { cosmos_sql_container = "TransactionsByAccount", partition_key_path = "/partitionKey", default_ttl = null},
        { cosmos_sql_container = "TransactionsByDate", partition_key_path = "/partitionKey", default_ttl = null}
]
//identity = "FirstPartyIdentity"*/

#functionapp variables
COSMOS_CONNECTION_STRING = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdprdcentralus;SecretName=cosmos-db-connection-string)"
servicebus_transsubscr = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdprdcentralus;SecretName=service-bus-host-activity-connection-string)"
service_bus_transruns = "@Microsoft.KeyVault(VaultName=kv-lyltyrwrdprdcentralus;SecretName=service-bus-host-activity-notification-connection-string)"
subscriptionname = "loyaltyrewards"

#roles app
role_data_owner          = "App Configuration Data Owner"
role_keyvault_secret = "Key Vault Secrets Officer"
role_keyvault_admin = "Key Vault Administrator"
kv_secret_user = "Key Vault Secrets User"

#keyvault secrets
redis_db = "redis-cache-connection-string"
redis_string = "redis-loyaltyrewards-prd-centralus.redis.cache.windows.net:6380,password=Bg5HfcuMYebOpE5UhnKzUWtQwWg9T0BsKAzCaHvQxPU=,ssl=True,abortConnect=False"
cosmos_db = "cosmos-db-connection-string"
cosmos_string = "AccountEndpoint=https://cosmos-loyaltyrewards-ebg-prd-centralus.documents.azure.com:443/;AccountKey=WIBPSwQaOFQCMTE5w7PtLhgRJqCUH3U7pT6FEQaXlYVXQqHP1y3fqnwoQMa3tFh3h7T5uMGpuprhACDbjUP4OQ==;"
host_activity  = "service-bus-host-activity-connection-string"
host_activity_string = "Endpoint=sb://commonservicebusprodcentralus.servicebus.windows.net/;SharedAccessKeyName=loyaltyrewards;SharedAccessKey=AKW2B2hXRPpwnKD/iYEOU6caqa3p4hk7IlPFGWowtGY=;EntityPath=host-activity"
host_post_activity  = "service-bus-host-activity-notification-connection-string"
host_post_activity_string = "Endpoint=sb://commonservicebusprodcentralus.servicebus.windows.net/;SharedAccessKeyName=loyaltyrewards;SharedAccessKey=7KxwFDxZtF4N++cAZMbbCPkLo+uKaTO3wxNXjLrCAUI=;EntityPath=host-posted-activity-notifications"


#user identity variables
data_action = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create",
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
"Microsoft.KeyVault/vaults/secrets/delete"]

principal_id = "dc5db3bd-80a5-46fe-bcec-f12aea7e0f0d"
role_principal_id = "dc5db3bd-80a5-46fe-bcec-f12aea7e0f0d"
# object_id = "d6b8a766-cd5b-4cce-b59d-c723b515ff07"


assignable_scopes = ["/subscriptions/dc25d6af-e917-437e-842e-2076dbc27e41"]
scope = "/subscriptions/dc25d6af-e917-437e-842e-2076dbc27e41/providers/Microsoft.Authorization/roleDefinitions/6ed72b47-dc64-4ce1-8822-61f90d38b017"


#app config variables

appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"

#app config  values

appconfig = "Identity:Authority"
appconfig_1 = "LoyaltyRewards:DatabaseName"
appconfig_2 = "DataStore:Url"
appconfig_value = "https://identity.csiweb.com"
appconfig_value_1 = "loyalty-rewards"
appconfig_value_2 = "https://cosmos-loyalty-rewards-ebg-prd-centralus.documents.azure.com:443/"
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

subnet_id_pe = ["10.227.96.0/26"]
subnet_id_account = ["10.227.104.0/29"]
subnet_id_drawing = ["10.227.97.0/29"]
subnet_id_transactionruns = ["10.227.98.0/29"]
subnet_id_transaction = ["10.227.99.0/29"]
subnet_id_transactionsubscr = ["10.227.100.0/29"]
subnet_id_winner = ["10.227.101.0/29"]
subnet_id_changefeedbyacc = ["10.227.102.0/29"]
subnet_id_changefeedbydate = ["10.227.103.0/29"]

#privateendpoint

is_manual_connection = "false"
cosmos_prvtcon_name = "cosmos-loyltyrwrdsprd-prvtconctname-centralus"
cosmosresource_name = [ "SQL" ]
cosmosdns_name = "privatelink_documents_azure_com"
cosmosdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.documents.azure.com"]
appconfig_prvtcon_name = "appconfig-loyltyrwrdsprd-prvtconctname-centralus"
appconfigresource_name = [ "configurationStores" ]
appconfigdns_name = "privatelink_azconfig_azure_com"
appconfigdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
# keyvault_prvtendpoint = "kv-fdx.prvtnendpoint_centralus"
keyvault_prvtcon_name = "kv-loyltyrwrdsprd-prvtconctname-centralus"
keyvaultresource_name = [ "vault" ]
keyvaultdns_name = "privatelink_vault_azure_com"
keyvaultdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
stddatx_prvtcon1_name = "stacc-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon2_name = "stdrwng-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon3_name = "sttrans-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon4_name = "sttrnsrun-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon5_name = "stwnnr-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon6_name = "sttrsubsr-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon7_name = "stchgbydt-loyltyrwrdsprd-prvtconctname-centralus"
stddatx_prvtcon8_name = "stchgbyacc-loyltyrwrdsprd-prvtconctname-centralus"
stddatxresource_name = ["blob"]
stddatxdns_name = "privatelink.blob.core.windows.net"
stddatxdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
funcaccount_prvtcon_name = "func-loyaltyrewards-prd-account-prvtcon-name"
funcaccountresource_name = [ "sites" ] 
funcaccountdns_name = "azurewebsites.net"
funcaccountdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcdrawing_prvtcon_name = "func-loyaltyrewards-prd-drawing-prvtcon-name"
funcdrawingresource_name = [ "sites" ] 
funcdrawingdns_name = "azurewebsites.net"
funcdrawingdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransaction_prvtcon_name = "func-loyaltyrewards-prd-transc-prvtcon-name"
functransactionresource_name = [ "sites" ] 
functransactiondns_name = "azurewebsites.net"
functransactiondns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransactionruns_prvtcon_name = "func-loyaltyrewards-prd-transcruns-prvtcon-name"
functransactionrunsresource_name = [ "sites" ] 
functransactionrunsdns_name = "azurewebsites.net"
functransactionrunsdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcwinner_prvtcon_name = "func-loyaltyrewards-prd-winner-prvtcon-name"
funcwinnerresource_name = [ "sites" ] 
funcwinnerdns_name = "azurewebsites.net"
funcwinnerdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
functransactionsubscr_prvtcon_name = "func-loyaltyrewards-prd-transsubscr-prvtcon-name"
functransactionsubscrresource_name = [ "sites" ] 
functransactionsubscrdns_name = "azurewebsites.net"
functransactionsubscrdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcchangefeedbydate_prvtcon_name = "func-loyaltyrewards-prd-chngfeedbydate-prvtcon-name"
funcchangefeedbydateresource_name = [ "sites" ] 
funcchangefeedbydatedns_name = "azurewebsites.net"
funcchangefeedbydatedns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 
funcchangefeedbyacc_prvtcon_name = "func-loyaltyrewards-prd-chngfeedbyacc-prvtcon-name"
funcchangefeedbyaccresource_name = [ "sites" ] 
funcchangefeedbyaccdns_name = "azurewebsites.net"
funcchangefeedbyaccdns_zone_id = ["/subscriptions/93ed0f8a-d2cd-4167-9260-a78d6599c306/resourceGroups/rgnetopsnetworkprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"] 