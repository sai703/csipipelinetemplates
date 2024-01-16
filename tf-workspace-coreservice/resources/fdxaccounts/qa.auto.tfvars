# Environment
env = "qa"
loc = "centralus"


#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"
storage_container_ddaaccts_name = ["azure-webjobs-eventhub", "azure-webjobs-hosts", "azure-webjobs-secrets"]
storage_container_ddatrx_name = ["azure-webjobs-eventhub", "azure-webjobs-hosts", "azure-webjobs-secrets"]
storage_container_acctscif_name = []
container_access_type  = ["private", "private", "private", "private"]



# cosmos db variables
cosmos_sql_db     = "fdx-accounts"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "account", partition_key_path = "/accountId" }]
//identity = "FirstPartyIdentity"*/



#app config variables

appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"

#app config  values

appconfig = "AllowedHosts"
appconfig_1 = "ApplicationInsights:ConnectionString"
appconfig_2 = "DataStore:Url"
appconfig_3 = "Identity:ApiName"
appconfig_4 = "Identity:Authentication"
appconfig_5 = "Identity:Authority"
appconfig_6 = "Identity:ClientId"
appconfig_7 = "Identity:ClientSecret"
appconfig_8 = "Identity:RequireHttpsMetadata"
appconfig_9 = "Logging:ApplicationInsights:LogLevel:Default"
appconfig_10 = "Logging:LogLevel:Default"
appconfig_11 = "Logging:LogLevel:Microsoft"
appconfig_12 = "Logging:LogLevel:Microsoft.Hosting.Lifetime"
appconfig_value = "*"
appconfig_value_1 = ""
appconfig_value_2 = "https://cosmos-fdxaccounts-ebg-dev-centralus.documents.azure.com:443/"
appconfig_value_3 = "fdxAccounts"
appconfig_value_4 = "Bearer"
appconfig_value_5 = "https://testidentity.csiweb.com/"
appconfig_value_6 = "GetOneAndStoreInKeyVault"
appconfig_value_7 = "GetOneAndStoreInKeyVault"
appconfig_value_8 = "true"
appconfig_value_9 = "Information"
appconfig_value_10 = "Information"
appconfig_value_11 = "Warning"
appconfig_value_12 = "Information"
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
subnet_id_ddatransactions  = ["10.225.112.176/29"]
subnet_id_ddaaccounts    = ["10.225.113.176/29"]
subnet_id_cif              = ["10.225.114.176/29"]
subnet_id_pe               = ["10.225.113.128/27"]
#privateendpoint
# app_manual_connection = "false"
# cosmos_manual_connection = "false"
# kv_manual_connection = "false"
# subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# kv_subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# cosmos_subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# cosmos_prvtendpoint = "cosmos-fdx.prvtconctname_centralus"
is_manual_connection = "false"
cosmos_prvtcon_name = "cosmos-fdx-qa-prvtconctname-centralus"
cosmosresource_name = [ "SQL" ]
cosmosdns_name = "privatelink_documents_azure_com"
cosmosdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.documents.azure.com"]
appconfig_prvtcon_name = "appconfig-fdx-qa-prvtconctname-centralus"
appconfigresource_name = [ "configurationStores" ]
appconfigdns_name = "privatelink_azconfig_azure_com"
appconfigdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
# keyvault_prvtendpoint = "kv-fdx.prvtnendpoint_centralus"
keyvault_prvtcon_name = "kv-fdx-qa-prvtconctname-centralus"
keyvaultresource_name = [ "vault" ]
keyvaultdns_name = "privatelink_vault_azure_com"
keyvaultdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
stddatx_prvtcon_name = "stddatx-fdx-qa-prvtconctname-centralus"
stddatxresource_name = ["blob"]
stddatxdns_name = "privatelink.blob.core.windows.net"
stddatxdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
stddaaccts_prvtcon_name = "stddaaccts-fdx-qa-prvtconctname-centralus"
stddaacctsresource_name = ["blob"]
stddaacctsdns_name = "privatelink.blob.core.windows.net"
stddaacctsdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
stcif_prvtcon_name = "stcif-fdx-qa-prvtconctname-centralus"
stcifresource_name = ["blob"]
stcifdns_name = "privatelink.blob.core.windows.net"
stcifdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
funccif_prvtcon_name = "funccif-fdx-qa-prvtconctname-centralus"
funccifresource_name = [ "sites" ]
funccifdns_name = "azurewebsites.net"
funccifdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcddaacts_prvtcon_name = "funcddaacts-fdx-qa-prvtconctname-centralus"
funcddaactsresource_name = [ "sites" ]
funcddaactsdns_name = "azurewebsites.net"
funcddaactsdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcddatx_prvtcon_name = "funcddatx-fdx-qa-prvtconctname-centralus"
funcddatxresource_name = [ "sites" ]
funcddatxdns_name = "azurewebsites.net"
funcddatxdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]

#function app setting
storage_ddatrx = "DefaultEndpointsProtocol=https;AccountName=stfdxddatrxqacentralus;AccountKey=o5yWiiUfxM68zoOgRo3oKf1yDPCYS55sajer3RFDWJ0VgE1VZGmHFD/Br0rMvkE9hUaIda7DRnbR+AStcxWtMg==;EndpointSuffix=core.windows.net"
storage_ddacif = "DefaultEndpointsProtocol=https;AccountName=stfdxcifqacentralus;AccountKey=wRbT5C4tjSnbG2Cha+HTvHmPpw+/OHqAJAMZuaZ8eEvmQKXpBOEv4PpwY3cKG3NWF853e2xrwTCp+AStaPqeOA==;EndpointSuffix=core.windows.net"
storage_ddaact = "DefaultEndpointsProtocol=https;AccountName=stfdxddaacctqacentralus;AccountKey=J+aytwN3zI3t3EPDDjWoEStzugAx8ECD/PFIIB8TFJOkVDOWCs3y/f4JRGffr+tgw+5nAI8TF3lE+AStukFI1w==;EndpointSuffix=core.windows.net"
credentials = "manageidentity"
eventhubname = "evh-ddaaccountscloudcore-devcentralus"
eventhubname_url = "evhns-ddacloudcore-devcentralus.servicebus.windows.net"
consumer_cif = "fdxcif"
consumer_act = "fdxaccounts"
consumer_trx  = "fdxtransactions"