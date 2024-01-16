# Environment
env = "dev"

#FDX Customer resource groups
rg_name = "rg-fdxcustomer-ebg-dev-centralus"

location = "centralus"

#storage- account variables
replication_type = "GRS"
account_tier     = "Standard"
# storage_container_name = ["inboundx9", "meridianrepair", "nupointrepair", "images"]
container_access_type = ["blob", "blob", "blob", "blob"]

# cosmos db variables
cosmos_sql_db     = "fdx-customer"
failover_location = "eastus2"
consistency_level = "Strong"
container_attributes = [{ cosmos_sql_container = "customer", partition_key_path = "/partitionKey" }]

#role_assignment variables
role_appcfg_data_reader = "App Configuration Data Reader"

#subent for function app
subnet_id_fdxcustomer = ["10.225.112.192/29"]

#function app variables
func_sku      = "S1"
os_type       = "Windows"
identity_type = "UserAssigned"
