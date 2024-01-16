module "eventhub-ddatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddatransactionscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-ddacloudcore.name
  resource_group_name = module.resourcegroup-ddacloudcore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-ddacloudcore]
}

module "eventhub-authrule-ddatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-ddatransactionscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-ddacloudcore.name
  eventhub_name       = module.eventhub-ddatransactionscloudcore.name
  resource_group_name = module.resourcegroup-ddacloudcore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-ddacloudcore, module.eventhub-ddatransactionscloudcore, module.eventhub-namespace-authorization-rule-ddacloudcore]
}

module "eventhub-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddaaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-ddacloudcore.name
  resource_group_name = module.resourcegroup-ddacloudcore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-ddacloudcore]
}

module "eventhub-authrule-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-ddaaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-ddacloudcore.name
  eventhub_name       = module.eventhub-ddaaccountscloudcore.name
  resource_group_name = module.resourcegroup-ddacloudcore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-ddacloudcore, module.eventhub-ddaaccountscloudcore, module.eventhub-namespace-authorization-rule-ddacloudcore]
}