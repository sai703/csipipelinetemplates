# module.evhns-cloudcoretransfer-ebg
module "evhns-cloudcoretransfer-ebg" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "2.0.0"
  resource_group_name = module.rg-cloudcoretransfer-ebg.name
  location            = module.rg-cloudcoretransfer-ebg.location
  name                = "evhns-cloudcoretransfer-ebg-${var.env}-${var.location}"
  tags                = var.tags
  sku                 = var.sku_name
  identity_type       = "UserAssigned"
  identity_ids        = [module.uami-cloudcoretransfer-ebg.id]
  capacity            = 1
  zone_redundant      = true
}