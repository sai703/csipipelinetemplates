module "uami-translatescloudcore-ebg" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "uami-translatescloudcore-ebg-${var.env}-${var.location}"
  resource_group_name = var.rg_name_tcc
  location            = var.location
  tags                = local.tags_tcc
}