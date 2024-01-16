module "eventhub-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddaaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-ddaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-ddaaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-ddaaccountscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-ddaaccountscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-ddatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-ddatransactionscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-ddatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-ddatransactionscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-ddatransactionscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-ddatransactionscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-tdaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdaaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-tdaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdaaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-tdaaccountscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-tdaaccountscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-tdatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdatransactionscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-tdatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdatransactionscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-tdatransactionscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-tdatransactionscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-lnsaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-lnsaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-lnsaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-lnsaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-lnsaccountscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-lnsaccountscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-lnstransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-lnstransactionscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-lnstransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-lnstransactionscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-lnstransactionscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-lnstransactionscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-locaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-locaccountscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-locaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-locaccountscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-locaccountscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-locaccountscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-loctransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-loctransactionscloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-loctransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-loctransactionscloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-loctransactionscloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-loctransactionscloudcore, module.eventhub-namespace-authorization-rule-fdx]
}

module "eventhub-cifcloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-cifcloudcore-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-fdx]
}

module "eventhub-authrule-cifcloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-cifcloudcore-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  eventhub_name       = module.eventhub-cifcloudcore.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-fdx, module.eventhub-cifcloudcore, module.eventhub-namespace-authorization-rule-fdx]
}