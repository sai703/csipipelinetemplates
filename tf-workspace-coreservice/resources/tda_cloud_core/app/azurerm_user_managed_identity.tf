module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-tdacloudcore-ebg-${var.env}-${var.loc}"
  location            = module.resourcegroup.location
  resource_group_name = module.resourcegroup.name
  tags                = local.tags
}