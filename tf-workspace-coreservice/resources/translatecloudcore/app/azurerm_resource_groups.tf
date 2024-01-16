module "rg-translatescore-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-translatescore-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = local.tags_tc
}

module "rg-translatescloudcore-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-translatescloudcore-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = local.tags_tcc
}