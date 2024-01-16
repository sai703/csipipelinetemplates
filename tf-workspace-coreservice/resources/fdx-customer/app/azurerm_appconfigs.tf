module "appcs-fdxcustomer-ebg" {
  source              = "app.terraform.io/csiseg/appconfig/csi"
  version             = "1.0.0"
  appconfig           = "appcs-fdxcustomer-ebg-${var.env}-${var.location}"
  resource_group_name = module.rg-fdxcustomer-ebg.name
  location            = var.location
  sku                 = "standard"
  tags                = local.tags
}