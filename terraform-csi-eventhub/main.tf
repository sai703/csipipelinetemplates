resource "azurerm_eventhub" "eventhub" {
  name                = var.name
  namespace_name      = var.eventhub_namespace
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}