variable "env" {
  type = string
}

variable "rg_name_tc" {
  type = string
}

variable "rg_name_tcc" {
  type = string
}

variable "location" {
  type = string
}

variable "tags_tc" {
  type    = map(string)
  default = null
}

variable "tags_tcc" {
  type    = map(string)
  default = null
}

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

variable "replication_type" {
  type        = string
  description = ""
}

variable "account_tier" {
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

variable "role_appcfg_data_reader" {
  type = string
}
variable "role_evh_data_receiver" {
  type = string
}

variable "subnet_id_translatescloudcore" {
  type = list(string)
}

variable "os_type" {
  type    = string
  default = "Windows"

}

variable "func_sku" {
  type    = string
  default = "S1"
}

variable "identity_type" {
  type = string
}