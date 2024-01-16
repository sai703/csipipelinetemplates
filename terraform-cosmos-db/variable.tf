variable "resource_group_name" {
}

variable "location" {
  default = "EAST US2"
}

variable "cosmos_db_account_name" {
  type        = string
}

variable "cosmos_sql_db" {
  type        = string
}

variable "failover_location" {
  default = "Central US"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the Node Pool."
  type        = map(string)
  default     = {}
}

variable "container_attributes" {
 type = list(object({
   cosmos_sql_container     = string
   partition_key_path = string
  }
))
}