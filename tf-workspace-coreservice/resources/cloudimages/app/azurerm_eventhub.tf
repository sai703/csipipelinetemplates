//event hub for transaction matching
module "eventhub-images-transactionmatching" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-imaging-transactionmatching-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.resourcegroup , module.eventhubns]
  
}

module "eventhub-authrule-transactionmatching" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-imaging-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-images-transactionmatching.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns, module.eventhub-images-transactionmatching, module.eventhub-namespace-authorization-rule]
}

//event hub for file processing
module "eventhub-file-processing" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-imaging-fileprocessingstatus-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name 
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns]
}

module "eventhub-authrule-file-processing" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-imaging-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-file-processing.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns, module.eventhub-file-processing, module.eventhub-namespace-authorization-rule]
}

//event hub for items
module "eventhub-items" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-imaging-item-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name 
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns]
}

module "eventhub-authrule-items" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-imaging-item-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  eventhub_name       = module.eventhub-items.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns, module.eventhub-items, module.eventhub-namespace-authorization-rule]
}

// Event hub for errors
module "eventhub-errors" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-imaging-errors-ebg-${var.env}-${var.loc}"
  eventhub_namespace  = module.eventhubns.name //module.eventhubns.eventhub_namespace
  resource_group_name = module.resourcegroup.name
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns]
}

module "eventhub-authrule-errors" {
  source              = "app.terraform.io/csiseg/eventhub-authorization-rule/csi"
  version             = "1.0.5"
  name                = "evh-auth-imaging-ebg-${var.env}-${var.loc}"
  namespace_name  = module.eventhubns.name
  eventhub_name       = module.eventhub-errors.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
  depends_on          = [module.eventhubns, module.eventhub-errors, module.eventhub-namespace-authorization-rule]
}
