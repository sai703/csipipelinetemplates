/*data "azurerm_eventhub" "eventhub-ddacore" {
  name                = "evh-ddaaccountscloudcore"
  resource_group_name = "${var.loc}"
}*/
module "role-assignment-eventhub-items" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-items.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-eventhub-file-processing" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-file-processing.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-eventhub-images-matched" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-images-transactionmatching.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-eventhub-errors" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-errors.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

/*module "role-assignment-eventhub-DDAcloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.eventhub-ddacore.id
  role_definition_name = "Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}*/

module "role-assignment-storage-blob" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.storage-account.id
  role_definition_name = var.role_storage_contributor
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-appconfig" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig.id
  role_definition_name = var.role_data_owner
  principal_id         = module.azuremanagedidentity.mi_principal_id
}



module "sql-role-assignment-cosmosdb" {
  source              = "app.terraform.io/csiseg/cosmos-sql-roleassignment/csi"
  version             = "1.0.0"
  resource_group_name = module.resourcegroup.name
  cosmosdb_name       = "cosmos-imaging-ebg-${var.env}-${var.loc}"
  sql_role_id         = module.cosmosdb-sql-role.id
  principal_id        = module.azuremanagedidentity.mi_principal_id
  scope               = module.cosmos-db.cosmosdb_id
}


