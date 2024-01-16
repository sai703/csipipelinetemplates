module "rg-fdxcustomer-ebg" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-fdxcustomer-ebg-${var.env}-${var.location}"
  location = var.location
  tags     = local.tags
}
