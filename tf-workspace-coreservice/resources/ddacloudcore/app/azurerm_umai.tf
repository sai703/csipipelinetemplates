module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-ddacloudcore-${var.env}-${var.loc}"
  location            = module.resourcegroup-ddacloudcore.location
  resource_group_name = module.resourcegroup-ddacloudcore.name
  tags                = local.tags
}

module "cosmosdb-sql-role"{
  source              = "app.terraform.io/csiseg/cosmos-sql-role/csi"
  version             = "1.0.0"
  rolename            = "sqlid-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  cosmosdb_name       = "cosmos-ddacloudcore-${var.env}-${var.loc}"
  scope               = [module.cosmosdb-ddacloudcore.cosmosdb_id]
  data_actions        = var.data_action
}