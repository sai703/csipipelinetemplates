module "appcs-customercloudcore-ebg" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.0"
  appconfig           = "appcs-customercloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = var.rg_name_ccc
  location            = var.location
  sku                 = "standard"
  tags                = local.tags_ccc
}