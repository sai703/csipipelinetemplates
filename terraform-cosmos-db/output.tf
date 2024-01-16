output "cosmosdb_id" {
  value       = azurerm_cosmosdb_account.csidb.id
  description = "Cosmos DB Account ID"
}

output "cosmosdb_endpoint" {
  value       = azurerm_cosmosdb_account.csidb.endpoint
  description = "Cosmos DB Endpoint"
}

output "cosmosdb_read_endpoint" {
  value       = azurerm_cosmosdb_account.csidb.read_endpoints
  description = "Cosmos DB Read Endpoint"
}

output "cosmosdb_write_endpoint" {
  value       = azurerm_cosmosdb_account.csidb.write_endpoints
  description = "Cosmos DB Write Endpoint"
}

output "cosmosdb_primary_key" {
  value       = azurerm_cosmosdb_account.csidb.primary_key
  sensitive   = true
  description = "Cosmos DB Primary Keys"
}

output "cosmosdb_secondary_key" {
  value       = azurerm_cosmosdb_account.csidb.secondary_key
  sensitive   = true
  description = "Cosmos DB Secondary Keys"
}

output "cosmosdb_primary_readonly_key" {
  value       = azurerm_cosmosdb_account.csidb.primary_readonly_key
  sensitive   = true
  description = "Cosmos DB Primary Read Only Keys"
}

output "cosmosdb_secondary_readonly_key" {
  value       = azurerm_cosmosdb_account.csidb.secondary_readonly_key
  sensitive   = true
  description = "Cosmos DB Secondary Read Only Keys"
}