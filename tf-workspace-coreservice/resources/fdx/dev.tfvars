# Environment
env       = "dev"
loc       = "centralus"
short_loc = "cus"

# Mandatory Tags
csi_project        = "Core Services"
csi_service        = "Core Services"
csi_dept           = "EBG"
csi_environment    = "dev"
csi_transformation = "True"

#app config variables
appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"
type                    = "kv"
cosmos_key              = "cosmosurl"
cosmosurl               = "https://cosmos-fdx-dev-centralus.documents.azure.com:443/"
cosmosdb_name           = "cosmosdatabase"
dbname                  = "items"

# cosmos db variables
cosmos_sql_db     = "items"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "accounts-and-transactions_by_account-id", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "transfers_by_id", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "customers_by_id", partition_key_path = "/partitionKey" },
{ cosmos_sql_container = "transfers_by_idempotency-key", partition_key_path = "/partitionKey" }]

#Eventhub variables
sku_name = "Standard"
id_type  = "UserAssigned"

#user identity variables
data_action = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create"]

#roleassignment
role_app_config_data_reader = "App Configuration Data Reader"
role_data_receiver          = "Azure Event Hubs Data Sender"
role_data_sender            = "Azure Event Hubs Data Receiver"

#storage- account variables
replication_type = "GRS"
account_tier     = "Standard"

#function app variables
sku                        = "S1"
os_type                    = "Windows"
identity_type              = "UserAssigned"
appconfig_connectionstring = "Endpoint=https://appcs-fdx-devcentralus.azconfig.io;Id=3Ego-l4-s0:IT76uyxZ4xEaL8K83dob;Secret=MRvMe0xctJ+ioKSBIs74eLfkDqfcnq218nv5c0fgH1E="
#vnet
vnet_rg   = "rg-coreservices-ebg-nonprod-centralus"
vnet_name = "vnet-coreservices-ebg-nonprod-centralus"


#subnet ip_prefixes
enforce_private_link_endpoint_network_policies = "true"
fdx_ddatransactions_subnet_prefix              = ["10.225.114.96/28"]
fdx_ddaaccounts_subnet_prefix                  = ["10.225.116.128/26"]
fdx_lnstransactions_subnet_prefix              = ["10.225.114.112/28"]
fdx_lnsaccounts_subnet_prefix                  = ["10.225.124.32/28"]
fdx_tdatransactions_subnet_prefix              = ["10.225.124.48/28"]
fdx_tdaaccounts_subnet_prefix                  = ["10.225.124.128/28"]
fdx_cif_subnet_prefix                          = ["10.225.113.160/29"]
subnet_id_PE                                   = ["10.225.115.128/26"]


#Private EndPoint
firewall_name                                 = "FirewallNetOpsNetworkNonProdCentralUS"
firewall_resourcegroup_name                   = "RGNetOpsNetworkNonprodCentralUS"
appconfig_subresource_names                   = ["configurationStores"]
appconfig_private_connection_name             = "AzureAppConfiguration"
is_manual_connection                          = "false"
appconfig_dns_name                            = "privatelink.azconfig.io"
cosmosdb_private_connection_name              = "Azurecosmosdb"
cosmosdb_subresource_names                    = ["sql"]
cosmosdb_dns_name                             = "privatelink.documents.azure.com"
eventhubns_private_connection_name            = "Azureeventhubns"
eventhubns_subresource_names                  = ["namespace"]
eventhubns_dns_name                           = "privatelink.servicebus.windows.net"
stfdxddatrx_storage_private_connection_name   = "AzureStorage"
stfdxddaaccts_storage_private_connection_name = "AzureStorage"
stfdxlnstrxx_storage_private_connection_name   = "AzureStorage"
stfdxlnsaccts_storage_private_connection_name = "AzureStorage"
stfdxtdatrx_storage_private_connection_name   = "AzureStorage"
stfdxtdaaccts_storage_private_connection_name = "AzureStorage"
stfdxcif_storage_private_connection_name      = "AzureStorage"
storage_subresource_names                     = ["blob"]
storage_dns_name                              = "privatelink.blob.core.windows.net"
funcddatransactions_private_connection_name   = "Azuresetbyfuncddatransactionsfunc"
funcddaaccounts_private_connection_name       = "Azuresetbyddaaccountsfunc"
funclnstransactions_private_connection_name   = "Azuresetbyfunclnstransactionsfunc"
funclnsaccounts_private_connection_name       = "Azuresetbyfunclnsaccountsfunc"
functdatransactions_private_connection_name   = "Azuresetbyfunctdatransactionsfunc"
functdaaccounts_private_connection_name       = "Azuresetbyfunctdaaccountsfunc"
funccif_private_connection_name               = "Azuresetbyfuncciffunc"
funcapp_subresource_names                     = ["sites"]
funcapp_dns_name                              = "azurewebsites.net"