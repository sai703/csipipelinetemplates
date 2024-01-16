module "resourcegroup-statementscloudcore" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-statementscloudcore-${var.env}-${var.loc}"
  location = var.loc
  tags     = local.tags
}