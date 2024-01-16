module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-statementscloudcore-${var.env}-${var.loc}"
  location            = module.resourcegroup-statementscloudcore.location
  resource_group_name = module.resourcegroup-statementscloudcore.name
  tags                = local.tags
}

module "cosmosdb-sql-role"{
  source              = "app.terraform.io/csiseg/cosmos-sql-role/csi"
  version             = "1.0.0"
  rolename            = "sqlid-statementscloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-statementscloudcore.name
  cosmosdb_name       = "cosmos-statementscloudcore-${var.env}-${var.loc}"
  scope               = [module.cosmosdb-statementscloudcore.cosmosdb_id]
  data_actions        = var.data_action
}