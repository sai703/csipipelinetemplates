variable "env" {
  default = ""
  type    = string
}

variable "main_env_type" {
  default = ""
  type    = string
}

variable "loc" {
  default = ""
  type    = string
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

variable "kv_monitoring_eventhub_name" {
  type        = string
  description = "Specifies the name of the Event Hub where Diagnostics Data should be sent. Changing this forces a new resource to be created."
}

variable "kv_monitoring_eventhub_authorization_rule_id" {
  type        = string
  description = "Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created"
}

variable "eh_sku_name" {
  type        = string
  description = ""
}

variable "id_type" {
  type        = string
  description = ""
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

variable "subnet_id_specscloudcore" {
  type = list(string)
}

variable "subnet_id_translatescloudcore" {
  type = list(string)
}

variable "subnet_id_tdatransactionscloudcore" {
  type = list(string)
}

variable "subnet_id_tdaaccountscloudcore" {
  type = list(string)
}

variable "subnet_id_customercloudcore" {
  type = list(string)
}

variable "subnet_id_imagescloudcore" {
  type = list(string)
}

variable "subnet_id_transactionchangescloudcore" {
  type = list(string)
}

variable "subnet_id_accountchangescloudcore" {
  type = list(string)
}

variable "subnet_id_rtscloudcore" {
  type = list(string)
}

variable "subnet_id_customerchangescloudcore" {
  type = list(string)
}

variable "subnet_id_pe" {
  type = list(string)
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

variable "role_data_receiver" {
  type = string
}

variable "role_data_sender" {
  type = string
}

variable "role_kv_secret_user" {
  type = string
}

variable "role_appconfig_data_reader" {
  type = string
}

variable "cosmosurl_key" {
  type = string
}

variable "type" {
  type = string
}



variable "cosmosdbname_key" {
  type = string
}

variable "dbname" {
  type = string
}

variable "evhns_tdacloudcore_key" {
  type = string
}
variable "eventhub_accounts_key" {
  type = string
}
variable "eventhub_transactions_key" {
  type = string
}
variable "eventhub_translates_key" {
  type = string
}
variable "eventhub_accountchanges_key" {
  type = string
}

variable "os_type" {
  type = string
}

variable "sku" {
  type = string
}

variable "identity_type" {
  type = string
}

variable "appconfig_private_connection_name" {
  type = string
}

variable "is_manual_connection" {
  type = string
}

variable "appconfig_subresource_names" {
  type = list(string)
}

variable "storage_private_connection_name" {
  type = string
}

variable "storage_subresource_names" {
  type = list(string)
}

variable "keyvault_private_connection_name" {
  type = string
}

variable "keyvault_subresource_names" {
  type = list(string)
}

variable "eventhubns_private_connection_name" {
  type = string
}

variable "eventhubns_subresource_names" {
  type = list(string)
}

variable "cosmosdb_private_connection_name" {
  type = string
}

variable "cosmosdb_subresource_names" {
  type = list(string)
}

variable "funtdatranscc_private_connection_name" {
  type = string
}

variable "funtdaacctscc_private_connection_name" {
  type = string
}

variable "funcustcc_private_connection_name" {
  type = string
}
variable "funtdatranslatescc_private_connection_name" {
  type = string
}

variable "funcapp_subresource_names" {
  type = list(string)
}

variable "rg_name" {
  type = string
}


variable "firewall_name" {
  type = string
}

# variable "tdaacctcc_evhns_name" {
#   type = string
# }

# variable "tdaacctcc_rg_name" {
#   type = string
# }

# variable "tdaacctcc_name" {
#   type = string
# }

# variable "tdatranscc_name" {
#   type = string
# }

# variable "tdatranscc_rg_name" {
#   type = string
# }

# variable "tdatranscc_evhns_name" {
#   type = string
# }

# variable "tdacustcc_evhns_name" {
#   type = string
# }

# variable "tdacustcc_rg_name" {
#   type = string
# }

# variable "tdacustcc_name" {
#   type = string
# }

# variable "transcc_evhns_name" {
#   type = string
# }

# variable "transcc_rg_name" {
#   type = string
# }

# variable "transcc_name" {
#   type = string
# }

# variable "specscc_evhns_name" {
#   type = string
# }

# variable "specscc_rg_name" {
#   type = string
# }

# variable "specscc_name" {
#   type = string
# }

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