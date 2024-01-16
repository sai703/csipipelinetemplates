module "eventhub-translatescore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-translatescore-ebg-${var.env}-${var.location}"
  eventhub_namespace  = module.eventhubns-translatescore.name
  resource_group_name = var.rg_name_tc
  partition_count     = 2
  message_retention   = 7
}

module "eventhub-translatescloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-translatescloudcore-ebg-${var.env}-${var.location}"
  eventhub_namespace  = module.eventhubns-translatescloudcore.name
  resource_group_name = var.rg_name_tcc
  partition_count     = 2
  message_retention   = 7
}
