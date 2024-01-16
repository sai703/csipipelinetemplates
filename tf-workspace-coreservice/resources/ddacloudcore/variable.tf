# Standard Variables
variable "env" {
  type    = string
}
variable "loc" {
  type = string
}
variable "short_loc" {
  type = string
}

#Cosmos Variables
variable "cosmos_sql_db" {
  type        = string
  description = ""
}

variable "failover_location" {
  type        = string
  description = ""
}

variable "consistency_level" {
  type        = string
  description = ""
}

variable "container_attributes" {
  type = list(object({
    cosmos_sql_container = string
    partition_key_path   = string
  }))
  description = ""
}


#appConfig variables
variable "appconfig_sku" {
  type = string
}
variable "appconfig_identity_type" {
  type = string
}
variable "cosmos_key" {
  type = string
}
variable "type" {
  type = string
}
variable "cosmosurl" {
  type = string
}
variable "cosmosdb_name" {
  type = string
}
variable "dbname" {
  type = string
}

variable "evhns_ddacloudcore_key"{
  type = string
}
variable "eventhub_accounts_key"{
  type = string
}
variable "eventhub_transactions_key"{
  type = string
}

#evnhubns & evnhub
variable "sku_name" {
  type        = string
  description = ""
}
variable "id_type" {
  type        = string
  description = ""
}

#umai variables
variable "data_action"{
  type        = list(string)
  description = ""
}


#roleassignment
variable "role_app_config_data_reader"{
	type = string
}
variable "role_data_receiver"{
	type = string
}
variable "role_data_sender"{
	type = string
}
variable "role_data_Owner"{
  type = string
}

#storage account variables
variable "account_tier"{
  type = string
}
variable "replication_type"{
  type = string
}

#funcApp variables
variable "sku"{
  type = string
}
variable "os_type"{
  type = string
}
variable "identity_type"{
  type = string
}
variable "appconfig_connectionstring"{
  type = string
}

#subnet ip_prefixes
variable "enforce_private_link_endpoint_network_policies"{
  type = string
}
variable "ddacloudcore_specscloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_translatescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_ddatransactionscloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_ddaaccountscloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_runningbalance_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_imagescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_transactionchangescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_accountchangescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_rtscloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_ddamemocloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_rtsnewaccountscloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_rtsbalancescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_translateschangescloudcore_subnet_prefix"{
  type = list(string)
}
variable "ddacloudcore_specschangescloudcore_subnet_prefix"{
  type = list(string)
}
variable "subnet_id_PE"{
  type = list(string)
}

#vnet
variable "vnet_rg"{
  type = string
}
variable "vnet_name"{
  type = string
}

#tenant
variable "tf_sa_client_id" {
}
variable "tf_sa_client_secret" {
}
variable "tf_sa_subscription_id" {
}
variable "tf_sa_tenant_id" {
}
variable "network_subscription_id" {
}

#firewall
variable "firewall_name"{
  type = string
}
variable "firewall_resourcegroup_name"{
  type =  string
}


#appconfig_PE
variable "appconfig_private_connection_name"{
  type = string
}
variable "appconfig_subresource_names"{
  type = list(string)
}
variable "is_manual_connection"{
  type = string
}
variable "appconfig_dns_name"{
  type = string
}

#cosmosdb_PE
variable "cosmosdb_private_connection_name"{
  type = string
}
variable "cosmosdb_subresource_names"{
  type = list(string)
}
variable "cosmosdb_dns_name"{
  type = string
}


#evthubns_PE
variable "eventhubns_private_connection_name"{
  type = string
}
variable "eventhubns_subresource_names"{
  type = list(string)
}
variable "eventhubns_dns_name"{
  type = string
}

#storage_PE
variable "stgstddaccspecscc_storage_private_connection_name"{
  type = string
}
variable "stddacctranslatescc_storage_private_connection_name"{
  type = string
}
variable "stddaccddatrxcc_storage_private_connection_name"{
  type = string
}
variable "stddaccddaacctscc_storage_private_connection_name"{
  type = string
}
variable "stddaccrunbal_storage_private_connection_name"{
  type = string
}
variable "stddaccimagescc_storage_private_connection_name"{
  type = string
}
variable "stddacctrxchangescc_storage_private_connection_name"{
  type = string
}
variable "stddaccacctchangescc_storage_private_connection_name"{
  type = string
}
variable "stddaccrtscc_storage_private_connection_name"{
  type = string
}
variable "stddacctspecchangescc_storage_private_connection_name"{
  type = string
}
variable "stddaccddamemocc_storage_private_connection_name"{
  type = string
}
variable "stddaccrtsnewacctcc_storage_private_connection_name"{
  type = string
}
variable "stddaccrtsbalancescc_storage_private_connection_name"{
  type = string
}
variable "stddacctxlateschangescc_storage_private_connection_name"{
  type = string
}
variable "storage_subresource_names"{
  type = list(string)
}
variable "storage_dns_name"{
  type = string
}


#funcapp_PE
variable "funcspecscloudcore_private_connection_name"{
  type = string
}
variable "functranslatescloudcore_private_connection_name"{
  type = string
}
variable "funcddatransactionscloudcore_private_connection_name"{
  type = string
}
variable "funcddaaccountscloudcore_private_connection_name"{
  type = string
}
variable "funcrunningbalance_private_connection_name"{
  type = string
}
variable "funcimagescloudcore_private_connection_name"{
  type = string
}
variable "functransactionchangescloudcore_private_connection_name"{
  type = string
}
variable "funcaccountchangescloudcore_private_connection_name"{
  type = string
}
variable "funcrtscloudcore_private_connection_name"{
  type = string
}
variable "funcspecschangescloudcore_private_connection_name"{
  type = string
}
variable "funcddamemocloudcore_private_connection_name"{
  type = string
}
variable "funcrtsnewaccountscloudcore_private_connection_name"{
  type = string
}
variable "funcrtsbalancescloudcore_private_connection_name"{
  type = string
}
variable "functranslateschangescloudcore_private_connection_name"{
  type = string
}
variable "funcapp_subresource_names"{
  type = list(string)
}
variable "funcapp_dns_name"{
  type = string
}
