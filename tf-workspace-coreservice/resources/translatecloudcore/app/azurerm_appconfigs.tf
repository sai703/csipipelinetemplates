module "appcs-translatescloudcore-ebg" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.0"
  appconfig           = "appcs-translatescloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = var.rg_name_tcc
  location            = var.location
  sku                 = "standard"
  tags                = local.tags_tcc
}