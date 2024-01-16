module "eventhub-rtsddamaster" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-rtsddamaster-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-rts-core.name
  resource_group_name = module.resourcegroup-rts-core.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-rts-core.name]
}

module "eventhub-authrule-rtsddamaster" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-rtsddamaster-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-rts-core.name
  eventhub_name       = module.eventhub-rtsddamaster.name
  resource_group_name = module.resourcegroup-rts-core.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-rts-core.name, module.eventhub-rtsddamaster,module.eventhub-namespace-authorization-rule-rts-core]
}

module "eventhub-rtsmontrx" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-rtsmontrx-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-rts-core.name
  resource_group_name = module.resourcegroup-rts-core.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-rts-core.name]
}

module "eventhub-authrule-rtsmontrx" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-rtsmontrx-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-rts-core.name
  eventhub_name       = module.eventhub-rtsmontrx.name
  resource_group_name = module.resourcegroup-rts-core.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-rts-core.name, module.eventhub-rtsmontrx,module.eventhub-namespace-authorization-rule-rts-core]
}

module "eventhub-rtsnewacct" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-rtsnewacct-${var.env}${var.loc}"
  eventhub_namespace  = module.eventhubns-rts-core.name
  resource_group_name = module.resourcegroup-rts-core.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-rts-core.name]
}

module "eventhub-authrule-rtsnewacct" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-rtsnewacct-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns-rts-core.name
  eventhub_name       = module.eventhub-rtsnewacct.name
  resource_group_name = module.resourcegroup-rts-core.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns-rts-core.name, module.eventhub-rtsnewacct,module.eventhub-namespace-authorization-rule-rts-core]
}