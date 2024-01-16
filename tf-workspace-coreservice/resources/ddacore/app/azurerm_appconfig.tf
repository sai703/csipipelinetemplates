module "appconfig" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.1"
  name                = "appcs-ddacore-ebg-${var.env}-${var.loc}"
  resource_group_name = module.rg-ddacore.name
  location            = module.rg-ddacore.location
  sku                 = var.appconfig_sku
  identity_type       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [
    module.azuremanagedidentity-ddacore.id
  ]
  tags = local.service_tags
  keys = []
}
