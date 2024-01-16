# module.cosmos-cloudcoretransfer-ebg
module "cosmos-cloudcoretransfer-ebg" {
  source                 = "app.terraform.io/csiseg/cosmos-db/csi"
  version                = "1.0.8"
  resource_group_name    = module.rg-cloudcoretransfer-ebg.name
  location               = module.rg-cloudcoretransfer-ebg.location
  tags                   = var.tags
  cosmos_db_account_name = "cosmos-cloudcoretransfer-ebg-${var.env}-${var.location}"
  cosmos_sql_db          = "cloud-core-transfer"
  consistency_level      = "Strong"
  geo_locations = {
    centralus = 0
  }
  container_attributes = [
    {
      cosmos_sql_container = "spec"
      partition_key_path   = "/application"
    }
  ]
}