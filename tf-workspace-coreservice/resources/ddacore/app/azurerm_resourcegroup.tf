module "rg-ddacore" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-ddacore-ebg-${var.env}-${var.loc}"
  location = var.loc
  tags     = local.service_tags
}
