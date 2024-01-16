module "resourcegroup" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-loyaltyrewards-ebg-${var.env}-${var.loc}"
  location = var.loc
  tags     = local.tags
}

# Alerting resource group
module "rg-loyaltyrewards-alerts" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-loyaltyrewards-alerts-ebg-${var.env}-${var.loc}"
  location = var.loc
  tags     = local.tags
}