module "resourcegroup" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.9"
  name     = "rg-coreservices-ebg-${var.env}-${var.loc}"
  location = var.loc
  tags     = local.tags
}