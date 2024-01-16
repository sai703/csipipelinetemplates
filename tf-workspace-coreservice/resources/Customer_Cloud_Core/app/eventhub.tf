module "eventhub-customercore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-customercore-ebg-${var.env}-${var.location}"
  eventhub_namespace  = module.eventhubns-customercore.name
  resource_group_name = var.rg_name_cc
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-customercore]
}

module "eventhub-customercloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-customercloudcore-ebg-${var.env}-${var.location}"
  eventhub_namespace  = module.eventhubns-customercloudcore.name
  resource_group_name = var.rg_name_ccc
  partition_count     = 2
  message_retention   = 7
  depends_on          = [module.eventhubns-customercloudcore]
}
