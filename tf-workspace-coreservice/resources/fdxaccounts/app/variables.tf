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
# Custom Variables
###
variable "storage_container_ddatrx_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_ddaaccts_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
}

variable "storage_container_acctscif_name" {
  type        = list(string)
  default     = []
  description = "list of container names"
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

variable "subnet_id_ddatransactions" {
  type = list(string)
}

variable "subnet_id_ddaaccounts" {
  type = list(string)
}

variable "subnet_id_cif" {
  type = list(string)
}

variable "subnet_id_pe" {
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

# variable "cosmos_prvtendpoint" {
#     type = string
# }
# variable "subnet_id" {
#     type = string
# }

# variable "cosmos_subnet_id" {
#     type = string
# }

# variable "kv_subnet_id" {
#     type = string
# }

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

# variable "appconfig_prvtendpoint" {
#     type = string
# }

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

# variable "keyvault_prvtendpoint" {
#     type = string
# }

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

# variable "app_manual_connection" {
#     type = string
# }

# variable "kv_manual_connection" {
#     type = string
# }

# variable "cosmos_manual_connection" {
#     type = string
# }

variable "stddatx_prvtcon_name" {
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
variable "stddaaccts_prvtcon_name"{
   type = string
}
variable "stddaacctsresource_name" {
   type = list(string)
}
variable "stddaacctsdns_name" {
    type = string
}
variable "stddaacctsdns_zone_id" {
    type = list(string)
}
variable "stcif_prvtcon_name" {
    type = string
}
variable "stcifresource_name" {
    type = list(string)
}
variable "stcifdns_name" {
    type = string
}
variable "stcifdns_zone_id" {
    type = list(string)
}

variable "funcddatx_prvtcon_name" {
   type = string
}
variable "funcddatxresource_name" {
   type = list(string)
}
variable "funcddatxdns_name" {
   type = string
}
variable "funcddatxdns_zone_id" {
   type = list(string)
}
variable "funcddaacts_prvtcon_name"{
   type = string
}
variable "funcddaactsresource_name" {
   type = list(string)
}
variable "funcddaactsdns_name" {
    type = string
}
variable "funcddaactsdns_zone_id" {
    type = list(string)
}
variable "funccif_prvtcon_name" {
    type = string
}
variable "funccifresource_name" {
    type = list(string)
}
variable "funccifdns_name" {
    type = string
}
variable "funccifdns_zone_id" {
    type = list(string)
}

variable "storage_ddatrx" {
    type = string
}

variable "storage_ddacif" {
    type = string
}

variable "storage_ddaact" {
    type = string
}

variable "credentials" {
    type = string
}

variable "eventhubname_url" {
    type = string
}

variable "eventhubname" {
    type = string
}

variable "consumer_cif" {
    type = string
}

variable "consumer_act" {
    type = string
}

variable "consumer_trx" {
    type = string
}

variable "is_manual_connection"{
  type = string
}

variable "appconfig" {  
    type = string 
}
variable "appconfig_1" {  
    type = string 
}
variable "appconfig_2" {  
    type = string 
}
variable "appconfig_3" {  
    type = string 
}
variable "appconfig_4" {  
    type = string 
}
variable "appconfig_5" {  
    type = string 
}
variable "appconfig_6" {  
    type = string 
}
variable "appconfig_7" {  
    type = string 
}
variable "appconfig_8" {  
    type = string 
}
variable "appconfig_9" {  
    type = string 
}
variable "appconfig_10" {  
    type = string 
}
variable "appconfig_11" {  
    type = string 
}
variable "appconfig_12" {  
    type = string 
}

variable "appconfig_value" {  
    type = string 
}
variable "appconfig_value_1" {  
    type = string 
}
variable "appconfig_value_2" {  
    type = string 
    }
variable "appconfig_value_3" {  
    type = string 
}
variable "appconfig_value_4" {  
    type = string 
    }
variable "appconfig_value_5" {  
    type = string 
    }
variable "appconfig_value_6" {  
    type = string 
    }
variable "appconfig_value_7" {  
    type = string 
}
variable "appconfig_value_8" {  
    type = string 
    }
variable "appconfig_value_9" {  
    type = string 
}
variable "appconfig_value_10" {  
    type = string 
}
variable "appconfig_value_11" {  
    type = string 
}
variable "appconfig_value_12" {  
    type = string 
}


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

