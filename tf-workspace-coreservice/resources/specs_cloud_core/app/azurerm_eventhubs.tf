module "evh-specscloudcore" {
  source              = "app.terraform.io/csiseg/eventhub/csi"
  version             = "1.0.4"
  name                = "evh-specscloudcore"
  resource_group_name = module.rg-specscloudcore-ebg.name
  eventhub_namespace  = module.evhns-specscloudcore-ebg.name
  partition_count     = 1
  message_retention   = 7
}