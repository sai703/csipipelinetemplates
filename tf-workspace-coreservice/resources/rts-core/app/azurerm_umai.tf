module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "id-rts-core-${var.env}-${var.loc}"
  location            = module.resourcegroup-rts-core.location
  resource_group_name = module.resourcegroup-rts-core.name
  tags                = local.tags
}