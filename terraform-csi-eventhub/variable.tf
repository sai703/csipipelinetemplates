variable "name" {
  type        = string
  description = "(Required) Specifies the name of the EventHub resource. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the EventHub's parent Namespace exists. Changing this forces a new resource to be created."
}

variable "eventhub_namespace" {
  type        = string
  description = "(Required) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
}

variable "partition_count" {
  type         = string
  description  = "(Required) Specifies the current number of shards on the Event Hub."
}

variable "message_retention" {
  type        = string
  description = "(Required) Specifies the number of days to retain the events for this Event Hub."
}
