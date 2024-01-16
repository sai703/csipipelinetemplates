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
cosmos_key    = "cosmosurl"
cosmosurl     = "https://cosmos-statementscloudcore-qa-centralus.documents.azure.com:443/"
cosmosdb_name = "cosmosdatabase"
dbname        = "items"

# cosmos db variables
cosmos_sql_db          = "items"
failover_location      = "eastus2"
consistency_level      = "Strong"
container_attributes = [{ cosmos_sql_container = "spec", partition_key_path = "/institutionId" },
    { cosmos_sql_container = "statement", partition_key_path = "/accountId" },
    { cosmos_sql_container = "leases", partition_key_path = "/partitionKey" }]

#Eventhub variables
sku_name = "Standard"
id_type  = "UserAssigned"

#user identity variables
data_action = ["Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/items/create"]

#roleassignment
role_app_config_data_reader = "App Configuration Data Reader"
role_data_receiver = "Azure Event Hubs Data Sender"
role_data_sender = "Azure Event Hubs Data Receiver"

#storage- account variables
replication_type       = "GRS"
account_tier           = "Standard"

#function app variables
sku = "S1"
os_type = "Windows"
identity_type = "UserAssigned"
appconfig_connectionstring = "Endpoint=https://appcs-statementscloudcore-qacentralus.azconfig.io;Id=nlIB-l4-s0:FfPHXmxXTPWaGP4O33PC;Secret=eFkOQ6rJdflsNRKqpsomYqZ9iIIedG7jmFELGMcke4c="

#vnet
vnet_rg   = "rg-coreservices-ebg-nonprod-centralus"
vnet_name = "vnet-coreservices-ebg-nonprod-centralus"


#subnet ip_prefixes
enforce_private_link_endpoint_network_policies                = "true"
statementscloudcore_specscloudcore_subnet_prefix              = ["10.225.123.128/26"]
statementscloudcore_ddaacctscloudcore_subnet_prefix           = ["10.225.122.128/26"]
statementscloudcore_cfprovidermap_subnet_prefix               = ["10.225.122.192/26"]
subnet_id_PE                                                  = ["10.225.123.64/26"]


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
  ststmtsccspecscc_storage_private_connection_name       = "AzureStorage"
  ststmtsccddaacctscc_storage_private_connection_name    = "AzureStorage"
  ststmtcfprovidermap_storage_private_connection_name    = "AzureStorage"
  storage_subresource_names                              = ["blob"]
  storage_dns_name                                       = "privatelink.blob.core.windows.net"
  funcspecscloudcore_private_connection_name             = "Azuresetbyfuncspecscloudcorefunc"
  funcddaacctscloudcore_private_connection_name          = "Azuresetbyddaacctscloudcorefunc"
  funccfprovidermap_private_connection_name              = "Azuresetbyfunccfprovidermapfunc"
  funcapp_subresource_names                              = ["sites"]
  funcapp_dns_name                                       = "azurewebsites.net"