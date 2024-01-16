# module.uami-cloudcoretransfer-ebg
module "uami-cloudcoretransfer-ebg" {
  source              = "app.terraform.io/csiseg/uami/csi"
  version             = "1.0.1"
  name                = "uami-cloudcoretransfer-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-cloudcoretransfer-ebg.name
  location            = module.rg-cloudcoretransfer-ebg.location
  tags                = var.tags
}