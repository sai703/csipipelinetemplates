# Standard Variables
variable "env" {
  type = string
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
variable "data_action" {
  type        = list(string)
  description = ""
}


#roleassignment
variable "role_app_config_data_reader" {
  type = string
}
variable "role_data_receiver" {
  type = string
}
variable "role_data_sender" {
  type = string
}

#storage account variables
variable "account_tier" {
  type = string
}
variable "replication_type" {
  type = string
}

#funcApp variables
variable "sku" {
  type = string
}
variable "os_type" {
  type = string
}
variable "identity_type" {
  type = string
}
variable "appconfig_connectionstring" {
  type = string
}

#subnet ip_prefixes
variable "enforce_private_link_endpoint_network_policies" {
  type = string
}
variable "fdx_ddatransactions_subnet_prefix" {
  type = list(string)
}
variable "fdx_ddaaccounts_subnet_prefix" {
  type = list(string)
}
variable "fdx_lnstransactions_subnet_prefix" {
  type = list(string)
}
variable "fdx_lnsaccounts_subnet_prefix" {
  type = list(string)
}
variable "fdx_tdatransactions_subnet_prefix" {
  type = list(string)
}
variable "fdx_tdaaccounts_subnet_prefix" {
  type = list(string)
}
variable "fdx_cif_subnet_prefix" {
  type = list(string)
}
variable "subnet_id_PE" {
  type = list(string)
}

#vnet
variable "vnet_rg" {
  type = string
}
variable "vnet_name" {
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
variable "firewall_name" {
  type = string
}
variable "firewall_resourcegroup_name" {
  type = string
}


#appconfig_PE
variable "appconfig_private_connection_name" {
  type = string
}
variable "appconfig_subresource_names" {
  type = list(string)
}
variable "is_manual_connection" {
  type = string
}
variable "appconfig_dns_name" {
  type = string
}

#cosmosdb_PE
variable "cosmosdb_private_connection_name" {
  type = string
}
variable "cosmosdb_subresource_names" {
  type = list(string)
}
variable "cosmosdb_dns_name" {
  type = string
}


#evthubns_PE
variable "eventhubns_private_connection_name" {
  type = string
}
variable "eventhubns_subresource_names" {
  type = list(string)
}
variable "eventhubns_dns_name" {
  type = string
}

#storage_PE
variable "stfdxddatrx_storage_private_connection_name" {
  type = string
}
variable "stfdxddaaccts_storage_private_connection_name" {
  type = string
}
variable "stfdxlnstrxx_storage_private_connection_name" {
  type = string
}
variable "stfdxlnsaccts_storage_private_connection_name" {
  type = string
}
variable "stfdxtdatrx_storage_private_connection_name" {
  type = string
}
variable "stfdxtdaaccts_storage_private_connection_name" {
  type = string
}
variable "stfdxcif_storage_private_connection_name" {
  type = string
}
variable "storage_subresource_names" {
  type = list(string)
}
variable "storage_dns_name" {
  type = string
}


#funcapp_PE
variable "funcddatransactions_private_connection_name" {
  type = string
}
variable "funcddaaccounts_private_connection_name" {
  type = string
}
variable "funclnstransactions_private_connection_name" {
  type = string
}
variable "funclnsaccounts_private_connection_name" {
  type = string
}
variable "functdatransactions_private_connection_name" {
  type = string
}
variable "functdaaccounts_private_connection_name" {
  type = string
}
variable "funccif_private_connection_name" {
  type = string
}
variable "funcapp_subresource_names" {
  type = list(string)
}
variable "funcapp_dns_name" {
  type = string
}
