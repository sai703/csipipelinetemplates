module "eventhubns-customercore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "1.0.2"
  eventhub_namespace  = "evhns-customercore-ebg-${var.env}-${var.location}"
  location            = var.location
  resource_group_name = var.rg_name_cc
  sku_name            = "Standard"
  capacity            = 2
  zone_redundant      = false
  identity_type       = "SystemAssigned"
  tags                = local.tags_cc
}

module "eventhubns-customercloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "1.0.2"
  eventhub_namespace  = "evhns-customercloudcore-ebg-${var.env}-${var.location}"
  location            = var.location
  resource_group_name = var.rg_name_ccc
  sku_name            = "Standard"
  capacity            = 2
  zone_redundant      = false
  identity_type       = "SystemAssigned"
  tags                = local.tags_ccc
}