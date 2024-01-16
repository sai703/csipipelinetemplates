module "eventhubns-translatescore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "1.0.2"
  eventhub_namespace  = "evhns-translatescore-ebg-${var.env}-${var.location}"
  location            = var.location
  resource_group_name = var.rg_name_tc
  sku_name            = "Standard"
  capacity            = 2
  zone_redundant      = false
  identity_type       = "SystemAssigned"
  tags                = local.tags_tc
}

module "eventhubns-translatescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "1.0.2"
  eventhub_namespace  = "evhns-translatescloudcore-ebg-${var.env}-${var.location}"
  location            = var.location
  resource_group_name = var.rg_name_tcc
  sku_name            = "Standard"
  capacity            = 2
  zone_redundant      = false
  identity_type       = "SystemAssigned"
  tags                = local.tags_tcc
}