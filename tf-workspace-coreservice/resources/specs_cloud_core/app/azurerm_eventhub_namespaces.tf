module "evhns-specscloudcore-ebg" {
  source = "git@ssh.dev.azure.com:v3/csiseg/IMG/terraform-csi-eventhub-namespace?ref=main"
  # source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  # version             = "1.0.5"
  resource_group_name = module.rg-specscloudcore-ebg.name
  location            = module.rg-specscloudcore-ebg.location
  name                = "evhns-specscloudcore-ebg-${var.env}-${var.location}"
  tags                = var.tags
  sku                 = var.sku_name
  identity_type       = "UserAssigned"
  identity_ids        = [module.uami-specscloudcore-ebg.id]
  subnet_id           = var.private_endpoint_subnet_id
  capacity            = 1
  zone_redundant      = true
}