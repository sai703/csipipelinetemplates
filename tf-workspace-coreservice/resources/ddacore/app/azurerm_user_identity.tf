module "azuremanagedidentity-ddacore" {
  source              = "app.terraform.io/csiseg/uami/csi"
  version             = "1.0.1"
  name                = "uaim-ddacore-ebg-${var.env}-${var.loc}"
  location            = module.rg-ddacore.location
  resource_group_name = module.rg-ddacore.name
  tags                = local.service_tags
}
