module "uami-customercloudcore-ebg" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "uami-customercloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = var.rg_name_ccc
  location            = var.location
  tags                = local.tags_ccc
}