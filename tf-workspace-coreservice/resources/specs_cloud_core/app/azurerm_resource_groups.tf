module "rg-specscloudcore-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-specscloudcore-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = var.tags
}