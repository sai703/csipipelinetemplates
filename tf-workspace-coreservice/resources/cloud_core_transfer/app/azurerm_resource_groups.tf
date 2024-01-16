# module.rg-cloudcoretransfer-ebg
module "rg-cloudcoretransfer-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-cloudcoretransfer-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = var.tags
}