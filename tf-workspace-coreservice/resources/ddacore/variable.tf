


variable "env" {
  type = string
}


variable "loc" {
  type = string
}

variable "appconfig_sku" {
  type        = string
  description = "app config sku"
  default     = ""
}

variable "appconfig_identity_type" {
  type        = string
  description = "define identity"
}

variable "sku_name" {
  type = string
}

variable "identitytype" {
  type        = string
  description = "define identity for eventhub"
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

variable "subnet_id_pe" {
    type = list(string)
}

variable "is_manual_connection"{
  type = string
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

variable "eventhubns_subresource_names"{
  type = list(string)
}

variable "eventhubns_private_connection_name" {
    type = string
}

variable "eventhubns_dns_name" {
    type = string
}

variable "eventhubns_dns_id" {
    type = list(string)
}

variable "tf_sa_client_id" {

}

variable "tf_sa_client_secret" {

}

variable "tf_sa_subscription_id" {

}

variable "tf_sa_tenant_id" {

}
