//event hub for TDA Cloud Core transactions
module "eventhub-tdatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdatransactionscloudcore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-authrule-tdatransactionscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdatransactionscloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-tdatransactionscloudcore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

//event hub for TDA Cloud Core Accounts
module "eventhub-tdaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdaaccountscloudcore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-authrule-tdaaccountscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdaaccountscloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-tdaaccountscloudcore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

//event hub for TDA Cloud Core Customers
module "eventhub-tdacustomerscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdacustomerscloudcore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-authrule-tdacustomerscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdacustomerscloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-tdacustomerscloudcore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

//event hub for TDA account changes cloudcore
module "eventhub-tdaaccountchangescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdaaccountchangescloudcore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-authrule-tdaaccountchangescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdaaccountchangescloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-tdaaccountchangescloudcore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}

//event hub for TDA Cloud Core Translates
module "eventhub-tdatranslatescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-tdatranslatescloudcore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-authrule-tdatranslatescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-tdatranslatescloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-tdatranslatescloudcore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}
