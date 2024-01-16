module "rg-customercore-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-customercore-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = local.tags_cc
}

module "rg-customercloudcore-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-customercloudcore-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = local.tags_ccc
}