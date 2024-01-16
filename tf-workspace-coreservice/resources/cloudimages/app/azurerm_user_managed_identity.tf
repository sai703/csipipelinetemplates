module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-image-ebg-${var.env}-${var.loc}"
  location            = module.resourcegroup.location
  resource_group_name = module.resourcegroup.name
  tags                = local.tags
  depends_on = [module.resourcegroup]
}

module "cosmosdb-sql-role" {
  source              = "app.terraform.io/csiseg/cosmos-sql-role/csi"
  version             = "1.0.0"
  rolename            = "sqlid-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  cosmosdb_name       = "cosmos-imaging-ebg-${var.env}-${var.loc}"
  scope               = [module.cosmos-db.cosmosdb_id]
  data_actions        = var.data_actions
  //tags                = local.tags
}

