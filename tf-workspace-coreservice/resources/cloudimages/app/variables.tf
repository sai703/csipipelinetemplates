###
# Standard Variables
###
variable "env" {
  default = "dev"
  type    = string
}

variable "loc" {
  default = ""
  type    = string
}


###

###
# Custom Variables
###
variable "storage_container_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "container_access_type" {
  type        = list(string)
  default     = []
  description = "list of access types"
}


variable "role_data_owner" {
  type = string
}

variable "appconfig_private_connection_name"{
  type = string
}

/*variable "appconfig_private_connection_resource_id"{
  type = string
}*/

variable "is_manual_connection"{
  type = string
}

variable "appconfig_dns_name"{
  type = string
}

variable "storage_private_connection_name"{
  type = string
}

/*variable "storage_private_connection_resource_id"{
  type = string
}*/

variable "storage_dns_name"{
  type = string
}

variable "eventhubns_private_connection_name"{
  type = string
}

/*variable "eventhubns_private_connection_resource_id"{
  type = string
}*/

variable "eventhubns_dns_name"{
  type = string
}

variable "cosmosdb_private_connection_name"{
  type = string
}

/*variable "cosmosdb_private_connection_resource_id"{
  type = string
}*/

variable "cosmosdb_dns_name"{
  type = string
}

variable "funsetbyid_private_connection_name"{
  type = string
}

/*variable "funsetbyid_private_connection_resource_id"{
  type = string
}*/

variable "funitembyid_private_connection_name"{
  type = string
}

/*variable "funitembyid_private_connection_resource_id"{
  type = string
}*/

variable "funtransid_private_connection_name"{
  type = string
}

/*variable "funtransid_private_connection_resource_id"{
  type = string
}*/

variable "funtranssub_private_connection_name"{
  type = string
}

/*variable "funtranssub_private_connection_resource_id"{
  type = string
}*/

variable "funnupoint_private_connection_name"{
  type = string
}

/*variable "funnupoint_private_connection_resource_id"{
  type = string
}*/

variable "funmeridian_private_connection_name"{
  type = string
}

/*variable "funmeridian_private_connection_resource_id"{
  type = string
}*/

variable "funx9sub_private_connection_name"{
  type = string
}

/*variable "funx9sub_private_connection_resource_id"{
  type = string
}*/

variable "funx9error_private_connection_name"{
  type = string
}

variable "httpfunc_private_connection_name"{
  type = string
}

/*variable "funx9error_private_connection_resource_id"{
  type = string
}*/

variable "funcapp_dns_name"{
  type = string
}

variable "funcapp_subresource_names"{
  type = list(string)
}

/*variable "funcapp_private_dns_zone_ids"{
  type = list(string)
}*/

variable "appconfig_subresource_names"{
  type = list(string)
}

/*variable "appconfig_private_dns_zone_ids"{
  type = list(string)
}*/

variable "storage_subresource_names"{
  type = list(string)
}

/*variable "storage_private_dns_zone_ids"{
  type = list(string)
}*/

variable "eventhubns_subresource_names"{
  type = list(string)
}

/*variable "eventhubns_private_dns_zone_ids"{
  type = list(string)
}*/

variable "cosmosdb_subresource_names"{
  type = list(string)
}

/*variable "cosmosdb_private_dns_zone_ids"{
  type = list(string)
}*/

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

/*variable "subnet_ids" {
  type = list(string)
  default = []
}*/


variable "container_attributes" {
  type = list(object({
    cosmos_sql_container = string
    partition_key_path   = string
  }))
  description = ""
}




/*

variable "firewall_ip-centralus"{
  type = string
}*/



variable "replication_type" {
  type        = string
  description = ""
}

variable "account_tier" {
  type        = string
  description = ""
}


variable "eh_sku_name" {
  type        = string
  description = ""
}

variable "id_type" {
  type        = string
  description = ""
}



variable "role_data_sender" {
  type = string
}

variable "role_storage_contributor" {
  type = string
}


variable "appconfig_sku" {
  type = string
}

variable "appconfig_identity_type" {
  type = string
}

variable "dbname_key"{
  type = string
}

variable "dbname"{
  type = string
}

variable "cosmosurl_key" {
  type = string
}

variable "cosmosurl" {
  type = string
}

variable "filestatuseh_key" {
  type = string
}

variable "filestatuseh" {
  type = string
}

variable "itemeh_key" {
  type = string
}

variable "itemeh" {
  type = string
}

variable "processerroeh_key" {
  type = string
}

variable "processerroreh" {
  type = string
}

variable "transmatcheh_key"  {
  type = string
}

variable "transmatcheh" {
  type = string
}

variable "ehns_key"{
type = string
}

variable "ehns"{
  type = string
}

variable "identityauth_key"{
  type = string
}

variable "identityauth"{
  type = string
}

variable "storageblob_key" {
  type = string
}

variable "storageblob" {
  type = string
}

variable "storageurl_key" {
   type = string
 }

variable "storage_bloburi"{
  type = string
}
/*variable "storageurl" {
  type = string
}*/

variable "type" {
  type = string
}

/*variable "storagecontainer_key"{
  type = string
}

variable "container_name"{
  type = string
}

variable "storage_key"{
  type = string
}

variable "storageurl"{
  type = string
}

variable "cosmos_key"{
  type = string
}

variable "cosmosurl"{
  type = string
}

variable "cosmosdb_name"{
  type = string
}

variable "dbname"{
  type = string
}*/

variable "data_actions" {
  type = list(string)

}

variable "identity_type" {
  type = string
}

variable "subnet_id_httpfun" {
 type = list(string)

}

variable "subnet_id_SetById" {
  type = list(string)
}

variable "subnet_id_SetByTransactionId" {
  type = list(string)
}

variable "subnet_id_ItemById" {
  type = list(string)
}

variable "subnet_id_TransactionSubscriber" {
  type = list(string)
}

variable "subnet_id_NuPointException" {
  type = list(string)
}

variable "subnet_id_MeridianException" {
  type = list(string)
}

variable "subnet_id_x9" {
  type = list(string)
}

variable "subnet_id_x9Error" {
  type = list(string)
}

variable "subnet_id_PE" {
  type = list(string)
}

variable "os_type" {
  type    = string
  default = "Windows"

}

variable "sku" {
  type    = string
  default = "S1"
}

/*variable "ddaeh_name" {
  type = string
}

variable "ddaeh_rg_name"{
  type = string
}

variable "ddaen_ns_name"{
  type = string
}
*/
variable "firewall_resourcegroup_name"{
  type = string
}

variable "firewall_name"{
  type = string
}

variable "tf_sa_client_id" {

}

variable "tf_sa_client_secret" {

}

variable "tf_sa_tenant_id" {

}

variable "network_subscription_id" {

}

variable "tf_sa_subscription_id" {
  
}


