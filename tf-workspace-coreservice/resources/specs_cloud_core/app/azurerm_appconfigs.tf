module "appcs-specscloudcore-ebg" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.0"
  appconfig           = "appcs-specscloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-specscloudcore-ebg.name
  location            = module.rg-specscloudcore-ebg.location
  sku                 = "standard"
  tags                = var.tags
}