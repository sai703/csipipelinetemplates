//event hub for transaction matching
module "eventhub-specscore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-specscore-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
   
}

module "eventhub-authrule-specscore" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-specscore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-specscore.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  }

