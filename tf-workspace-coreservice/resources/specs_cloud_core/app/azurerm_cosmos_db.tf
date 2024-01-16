module "cosmos-specscloudcore-ebg" {
  source                 = "app.terraform.io/csiseg/cosmos-db/csi"
  version                = "1.0.8"
  resource_group_name    = module.rg-specscloudcore-ebg.name
  location               = module.rg-specscloudcore-ebg.location
  tags                   = var.tags
  cosmos_db_account_name = "cosmos-specscloudcore-ebg-${var.env}-${var.location}"
  cosmos_sql_db          = "cloud-core-specs"
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