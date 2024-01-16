module "eventhubns-ddacore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version             = "1.0.2"
  eventhub_namespace  = "evhns-ddacore-ebg-${var.env}-${var.loc}"
  location            = module.rg-ddacore.location
  resource_group_name = module.rg-ddacore.name
  sku_name            = var.sku_name
  capacity            = 2
  zone_redundant      = false
  identity_type       = var.id_type
  tags                = local.service_tags
}

module "eventhub-ddaaccountscore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddaaccountscore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-ddacore]
}

module "eventhub-ddaaccountscore-authorization-rule" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evha-ddaaccountscore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

module "eventhub-ddatransactionscore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddatransactionscore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-ddacore]
}

module "eventhub-ddatransactionscore-authorization-rule" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evha-ddatransactionscore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

module "eventhub-ddamemocore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddamemocore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-ddacore]
}

module "eventhub-ddamemocore-authorization-rule" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evha-ddamemocore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-ddacore.name
  resource_group_name = module.rg-ddacore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}
