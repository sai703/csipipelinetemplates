variable "env" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "sku_name" {
  type    = string
  default = "Standard"
}

variable "private_endpoint_subnet_id" {
  type = string
}

variable "evhns_dns_zone_ids" {
  type = list(string)
}

variable "monitoring_eventhub_name" {
  type        = string
  description = "Specifies the name of the Event Hub where Diagnostics Data should be sent. Changing this forces a new resource to be created."
}

variable "monitoring_eventhub_authorization_rule_id" {
  type        = string
  description = "Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Changing this forces a new resource to be created"
}
