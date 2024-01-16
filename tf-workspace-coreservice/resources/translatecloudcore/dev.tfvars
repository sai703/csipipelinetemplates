# Environment
env = "dev"

#Translates Core resource groups
rg_name_tc = "rg-translatescore-ebg-dev-centralus"

#Translates Cloud Core Resource groups
rg_name_tcc = "rg-translatescloudcore-ebg-dev-centralus"

location = "centralus"

#storage- account variables
replication_type = "GRS"
account_tier     = "Standard"
# storage_container_name = ["inboundx9", "meridianrepair", "nupointrepair", "images"]
container_access_type = ["blob", "blob", "blob", "blob"]

# cosmos db variables
cosmos_sql_db     = "translates"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "bank-overrides", partition_key_path = "/partitionKey" },
  { cosmos_sql_container = "bank-translates", partition_key_path = "/partitionKey" },
{ cosmos_sql_container = "translates", partition_key_path = "/id" }]

#role_assignment variables
role_appcfg_data_reader = "App Configuration Data Reader"
role_evh_data_receiver  = "Azure Event Hubs Data Receiver"

#subent for function app
subnet_id_translatescloudcore = ["10.225.112.32/29"]

#function app variables
func_sku      = "S1"
os_type       = "Windows"
identity_type = "UserAssigned"
