module "uami-fdxcustomer-ebg" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "uami-fdxcustomer-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-fdxcustomer-ebg.name
  location            = var.location
  tags                = local.tags
}