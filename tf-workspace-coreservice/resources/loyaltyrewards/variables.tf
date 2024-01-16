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

variable "route_env" {
   type = string
}

variable "firewall_name" {
   type = string
}

variable "firewall_resourcegroup_name" {
   type = string
}


###
# Custom Variables
###

variable "resource_group_name" {
   type = string
}

variable "subscriptionname" {
   type = string
}

variable "virtual_network_name" {
   type = string
}

variable "private_network_name" {
   type = string
}

variable "loganalytics_name" {
   type = string
}

variable "loganalytics_resource_group" {
   type = string
}


variable "storage_container_lyltyrwds1_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds2_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds3_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds4_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds5_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds6_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}


variable "storage_container_lyltyrwds7_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_lyltyrwds8_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "data_action" {
   type = list(string)
}

variable "keyvault_actions" {
   type = list(string)
}

variable "assignable_scopes" {
   type = list(string)
}

variable "scope" { 
   type = string
}

variable "principal_id" {
   type = string
}

variable "role_principal_id" {
   type = string
}

# variable "object_id" {
#    type = string
# }

variable "kv_secret_user" {
   type = string
}


variable "role_keyvault_secret" {
  type = string
}

variable "role_keyvault_admin" {
  type = string
}
variable "cosmos_db" {
   type = string
}

# variable "max_throughput" {
#    type = string
# }


variable "cosmos_string" {
  type = string
}

variable "redis_db" {
  type = string
}

variable "redis_string" {
  type = string
}

variable "host_activity" {
  type = string
}

variable "host_activity_string" {
  type = string
}

variable "host_post_activity" {
  type = string
}

variable "host_post_activity_string" {
  type = string
}

variable "COSMOS_CONNECTION_STRING" {
   type = string
}

variable "servicebus_transsubscr" {
   type = string
}

variable "service_bus_transruns" {
   type = string
}


variable "container_access_type" {
  type        = list(string)
  default     = []
  description = "list of access types"
}


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
    default_ttl = number
  }))
  description = ""
}


variable "replication_type" {
  type        = string
  description = ""
}

variable "account_tier" {
  type        = string
  description = ""
}


variable "appconfig_sku" {
  type = string
}

variable "appconfig_identity_type" {
  type = string
}

variable "identity_type" {
  type = string
}


variable "subnet_id_pe" {
    type = list(string)
}

variable "subnet_id_account" {
   type = list(string)
}
variable "subnet_id_drawing" {
   type = list(string)
}
variable "subnet_id_transactionruns" {
   type = list(string)
}
variable "subnet_id_transaction" {
   type = list(string)
}
variable "subnet_id_transactionsubscr" {
   type = list(string)
}
variable "subnet_id_winner" {
   type = list(string)
}
variable "subnet_id_changefeedbyacc" {
   type = list(string)
}
variable "subnet_id_changefeedbydate" {
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

variable "kv_sku_name" {
  type = string
}

variable "kv_soft_delete_retention_days" {
  type = string
}

variable "kv_purge_protection_enabled" {
  type = string
}

variable "kv_enabled_for_deployment" {
  type = string
}
variable "kv_enabled_for_disk_encryption" {
  type = string
}

variable "kv_enabled_for_template_deployment" {
  type = string
}
variable "kv_enable_rbac_authorization" {
  type = string
}



variable "cosmos_prvtcon_name" {
    type = string
}

variable "cosmosresource_name" {
    type = list(string)
}

variable "cosmosdns_name" {
    type = string
}

variable "cosmosdns_zone_id" {
    type = list(string)
}


variable "appconfig_prvtcon_name" {
    type = string
}

variable "appconfigresource_name" {
    type = list(string)
}

variable "appconfigdns_name" {
    type = string
}

variable "appconfigdns_zone_id" {
    type = list(string)
}


variable "keyvault_prvtcon_name" {
    type = string
}

variable "keyvaultresource_name" {
    type = list(string)
}

variable "keyvaultdns_name" {
    type = string
}

variable "keyvaultdns_zone_id" {
    type = list(string)
}



variable"stddatx_prvtcon1_name" { 
   type = string
}
variable"stddatx_prvtcon2_name" { 
   type = string
} 
variable"stddatx_prvtcon3_name" { 
   type = string
} 
variable"stddatx_prvtcon4_name" { 
   type = string
} 
variable"stddatx_prvtcon5_name" { 
   type = string
}
variable"stddatx_prvtcon6_name" { 
   type = string
}
variable"stddatx_prvtcon7_name" { 
   type = string
}
variable"stddatx_prvtcon8_name" { 
   type = string
}
variable "stddatxresource_name" {
   type = list(string)
}
variable "stddatxdns_name" {
   type = string
}
variable "stddatxdns_zone_id" {
   type = list(string)
}


variable "funcaccount_prvtcon_name" {
   type = string
}
variable "funcaccountresource_name" {
   type = list(string)
}
variable "funcaccountdns_name" {
   type = string
}
variable "funcaccountdns_zone_id" {
   type = list(string)
}
variable "funcdrawing_prvtcon_name" {
   type = string
}
variable "funcdrawingresource_name" {
   type = list(string)
}
variable "funcdrawingdns_name" {
   type = string
}
variable "funcdrawingdns_zone_id" {
   type = list(string)
}

variable "functransaction_prvtcon_name" {
   type = string
}
variable "functransactionresource_name" {
   type = list(string)
}
variable "functransactiondns_name" {
   type = string
}
variable "functransactiondns_zone_id" {
   type = list(string)
}

variable "functransactionruns_prvtcon_name" {
   type = string
}
variable "functransactionrunsresource_name" {
   type = list(string)
}
variable "functransactionrunsdns_name" {
   type = string
}
variable "functransactionrunsdns_zone_id" {
   type = list(string)
}

variable "funcwinner_prvtcon_name" {
   type = string
}
variable "funcwinnerresource_name" {
   type = list(string)
}
variable "funcwinnerdns_name" {
   type = string
}
variable "funcwinnerdns_zone_id" {
   type = list(string)
}

variable "functransactionsubscr_prvtcon_name" {
   type = string
}
variable "functransactionsubscrresource_name" {
   type = list(string)
}
variable "functransactionsubscrdns_name" {
   type = string
}
variable "functransactionsubscrdns_zone_id" {
   type = list(string)
}

variable "funcchangefeedbydate_prvtcon_name" {
   type = string
}
variable "funcchangefeedbydateresource_name" {
   type = list(string)
}
variable "funcchangefeedbydatedns_name" {
   type = string
}
variable "funcchangefeedbydatedns_zone_id" {
   type = list(string)
}

variable "funcchangefeedbyacc_prvtcon_name" {
   type = string
}
variable "funcchangefeedbyaccresource_name" {
   type = list(string)
}
variable "funcchangefeedbyaccdns_name" {
   type = string
}
variable "funcchangefeedbyaccdns_zone_id" {
   type = list(string)
}



variable "is_manual_connection"{
  type = string
}

variable "role_data_owner" {
  type = string
}

variable "appconfig" {  
    type = string 
}
variable "appconfig_1" {  
    type = string 
}
# variable "appconfig_2" {  
#     type = string 
# }

# variable "appconfig_3" {  
#     type = string 
# }

# variable "vault" {
#     type = string
# }


variable "appconfig_value" {  
    type = string 
}
variable "appconfig_value_1" {  
    type = string 
}
# variable "appconfig_value_2" {  
#     type = string 
#     }

# variable "appconfig_value_3" {  
#     type = string 
#     }


variable "type" {
    type = string
}

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
