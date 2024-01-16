module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-fdx-${var.env}-${var.loc}"
  location            = module.resourcegroup-fdx.location
  resource_group_name = module.resourcegroup-fdx.name
  tags                = local.tags
}

module "cosmosdb-sql-role"{
  source              = "app.terraform.io/csiseg/cosmos-sql-role/csi"
  version             = "1.0.0"
  rolename            = "sqlid-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  cosmosdb_name       = "cosmos-fdx-${var.env}-${var.loc}"
  scope               = [module.cosmosdb-fdx.cosmosdb_id]
  data_actions        = var.data_action
}