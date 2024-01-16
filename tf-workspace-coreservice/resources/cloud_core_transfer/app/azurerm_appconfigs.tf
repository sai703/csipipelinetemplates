# module.appcs-cloudcoretransfer-ebg
module "appcs-cloudcoretransfer-ebg" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.0"
  appconfig           = "appcs-cloudcoretransfer-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-cloudcoretransfer-ebg.name
  location            = module.rg-cloudcoretransfer-ebg.location
  sku                 = "standard"
  tags                = var.tags
}