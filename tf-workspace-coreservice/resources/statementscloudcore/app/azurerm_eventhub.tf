module "eventhub-specscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-specscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-statementscloudcore.name
  resource_group_name = module.resourcegroup-statementscloudcore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-statementscloudcore]
}

module "eventhub-authrule-specscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-specscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-statementscloudcore.name
  eventhub_name       = module.eventhub-specscloudcore.name
  resource_group_name = module.resourcegroup-statementscloudcore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-statementscloudcore, module.eventhub-specscloudcore, module.eventhub-namespace-authorization-rule-statementscloudcore]
}

module "eventhub-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddaaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-statementscloudcore.name
  resource_group_name = module.resourcegroup-statementscloudcore.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-statementscloudcore]
}

module "eventhub-authrule-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-ddaaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-statementscloudcore.name
  eventhub_name       = module.eventhub-ddaaccountscloudcore.name
  resource_group_name = module.resourcegroup-statementscloudcore.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-statementscloudcore, module.eventhub-ddaaccountscloudcore, module.eventhub-namespace-authorization-rule-statementscloudcore]
}