# Environment
env = "dev"
loc = "centralus"


#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"
storage_container_ddaaccts_name = ["azure-webjobs-eventhub", "azure-webjobs-hosts", "azure-webjobs-secrets"]
storage_container_ddatrx_name = ["azure-webjobs-eventhub", "azure-webjobs-hosts", "azure-webjobs-secrets"]
storage_container_acctscif_name = []
container_access_type  = ["blob", "blob", "blob", "blob"]



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
subnet_id_ddatransactions  = ["10.225.112.16/29"]
subnet_id_ddaaccounts    = ["10.225.113.16/29"]
subnet_id_cif              = ["10.225.114.16/29"]
subnet_id_pe               = ["10.225.112.64/26"]
#privateendpoint
# app_manual_connection = "false"
# cosmos_manual_connection = "false"
# kv_manual_connection = "false"
# subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# kv_subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# cosmos_subnet_id = "subnet-coreserivces-pvtendpoint-ebg-centralus"
# cosmos_prvtendpoint = "cosmos-fdx.prvtnendpoint_centralus"
is_manual_connection = "false"
cosmos_prvtcon_name = "cosmos-fdx-prvtconctname-centralus"
cosmosresource_name = [ "SQL" ]
cosmosdns_name = "privatelink_documents_azure_com"
cosmosdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.documents.azure.com"]
appconfig_prvtendpoint = "appconfig-fdx-prvtnendpoint-centralus"
appconfig_prvtcon_name = "appconfig-fdx-prvtnendpoint-centralus"
appconfigresource_name = [ "configurationStores" ]
appconfigdns_name = "privatelink_azconfig_azure_com"
appconfigdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
# keyvault_prvtendpoint = "kv-fdx.prvtnendpoint_centralus"
keyvault_prvtcon_name = "kv-fdx-prvtnendpoint-centralus"
keyvaultresource_name = [ "vault" ]
keyvaultdns_name = "privatelink_vault_azure_com"
keyvaultdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
stddatx_prvtcon_name = "stddatx-fdx-prvtnendpoint-centralus"
stddatxresource_name = ["blob"]
stddatxdns_name = "privatelink.blob.core.windows.net"
stddatxdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
stddaaccts_prvtcon_name = "stddaaccts-fdx-prvtnendpoint-centralus"
stddaacctsresource_name = ["blob"]
stddaacctsdns_name = "privatelink.blob.core.windows.net"
stddaacctsdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
stcif_prvtcon_name = "stcif-fdx-prvtnendpoint-centralus"
stcifresource_name = ["blob"]
stcifdns_name = "privatelink.blob.core.windows.net"
stcifdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
funccif_prvtcon_name = "funccif-fdx-prvtnendpoint-centralus"
funccifresource_name = [ "sites" ]
funccifdns_name = "azurewebsites.net"
funccifdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcddaacts_prvtcon_name = "funcddaacts-fdx-prvtnendpoint-centralus"
funcddaactsresource_name = [ "sites" ]
funcddaactsdns_name = "azurewebsites.net"
funcddaactsdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
funcddatx_prvtcon_name = "funcddatx-fdx-prvtnendpoint-centralus"
funcddatxresource_name = [ "sites" ]
funcddatxdns_name = "azurewebsites.net"
funcddatxdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]

#function app setting
storage_ddatrx = "DefaultEndpointsProtocol=https;AccountName=stfdxddatrxdevcentralus;AccountKey=J6ypnJAMfaJ9T5wXswJpO2A/QROODj54sGNbKoPeqfIUAF1v5UYkWuHlQV5z1sjeYoEdaPWTujRN+AStlCLTsg==;EndpointSuffix=core.windows.net"
storage_ddacif = "DefaultEndpointsProtocol=https;AccountName=stfdxcifdevcentralus;AccountKey=YbOPpPnznVYpjGD5XRI5mRCr3grFHDOmbFyzN2NplqFoCiHhMwvbUYL+ztiTS0qtnoDCz4rVC5f0+ASt7sPsZw==;EndpointSuffix=core.windows.net"
storage_ddaact = "DefaultEndpointsProtocol=https;AccountName=stfdxddaacctdevcentralus;AccountKey=Fc7sEH3hmf3IgcxGT1Q6mO9HDServuarBr88Tcwo06HAnmArRb7lU7dozdLBxWBORV8NW9fxcp/N+AStsCRAJQ==;EndpointSuffix=core.windows.net"
credentials = "manageidentity"
eventhubname = "evh-ddaaccountscloudcore-devcentralus"
eventhubname_url = "evhns-ddacloudcore-devcentralus.servicebus.windows.net"
consumer_cif = "fdxcif"
consumer_act = "fdxaccounts"
consumer_trx  = "fdxtransactions"