resource "azurerm_cosmosdb_account" "csidb" {

  name                      = var.cosmos_db_account_name
  location                  = var.location
  resource_group_name       = var.resource_group_name
  offer_type                = "Standard"
  kind                      = "GlobalDocumentDB"
  enable_automatic_failover = true

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }

  tags = var.tags

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_cosmosdb_sql_database" "db" {
  name                = var.cosmos_sql_db
  resource_group_name = azurerm_cosmosdb_account.csidb.resource_group_name
  account_name        = azurerm_cosmosdb_account.csidb.name
}

resource "azurerm_cosmosdb_sql_container" "coll" {
  for_each = {
    for index, attribute in var.container_attributes: index => attribute
  }
  name                = each.value.cosmos_sql_container
  resource_group_name = azurerm_cosmosdb_account.csidb.resource_group_name
  account_name        = azurerm_cosmosdb_account.csidb.name
  database_name       = azurerm_cosmosdb_sql_database.db.name
  partition_key_path  = each.value.partition_key_path
  partition_key_version = 1
  throughput            = 400
}