# module.evh-cloudcoretransfer
module "evh-cloudcoretransfer" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-cloudcoretransfer"
  resource_group_name = module.rg-cloudcoretransfer-ebg.name
  eventhub_namespace  = module.evhns-cloudcoretransfer-ebg.name
  partition_count     = 1
  message_retention   = 7
}