output "id" {
  description = "Id of Event Hub."
  value       = azurerm_eventhub.eventhub.id
}

output "partition_ids" {
  description = "Id of Event Hub."
  value       = azurerm_eventhub.eventhub.partition_ids
}

output "name" {
  description = "Name of the Event Hub."
  value       = azurerm_eventhub.eventhub.name
}