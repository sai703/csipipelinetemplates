# module.uami-specscloudcore-ebg
module "uami-specscloudcore-ebg" {
  source              = "app.terraform.io/csiseg/uami/csi"
  version             = "1.0.1"
  name                = "uami-specscloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-specscloudcore-ebg.name
  location            = module.rg-specscloudcore-ebg.location
  tags                = var.tags
}