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

#evnhubns & evnhub
variable "sku_name" {
  type        = string
  description = ""
}
variable "id_type" {
  type        = string
  description = ""
}
// variable "is_public_network_access_enabled"{
//   type = string
//   default = "false"
// }

#evthubns_PE
variable "eventhubns_private_connection_name"{
  type = string
}
variable "eventhubns_subresource_names"{
  type = list(string)
}
variable "is_manual_connection"{
  type = string
}
variable "eventhubns_dns_name"{
  type = string
}

#subnet ip_prefix
variable "subnet_id_PE"{
  type = list(string)
}

#vnet
variable "vnet_rg" {
  type = string
}
variable "vnet_name" {
  type = string
}