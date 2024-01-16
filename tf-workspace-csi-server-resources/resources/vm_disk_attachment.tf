module "ebze-vm-diskattachment-prod-eastus2" {
  source            = "app.terraform.io/csiseg/azurevmdiskattachment/csi"
  version           = "1.0.0"
  virtualmachine_id = module.ebze-vm-resource-prod-eastus2.virtual_machine_id
  manageddisk_id    = module.disk-ebze-internal-prod-eastus2.managed_disk_id
}

module "pbis-vm-diskattachment-prod-eastus2" {
  source            = "app.terraform.io/csiseg/azurevmdiskattachment/csi"
  version           = "1.0.0"
  virtualmachine_id = module.pbis-vm-resource-prod-eastus2.virtual_machine_id
  manageddisk_id    = module.disk-pbis-internal-prod-eastus2.managed_disk_id
}


module "ebze-vm-diskattachment-prod-centralus" {
  source            = "app.terraform.io/csiseg/azurevmdiskattachment/csi"
  version           = "1.0.0"
  virtualmachine_id = module.ebze-vm-resource-prod-centralus.virtual_machine_id
  manageddisk_id    = module.disk-ebze-internal-prod-centralus.managed_disk_id
}

module "pbis-vm-diskattachment-prod-centralus" {
  source            = "app.terraform.io/csiseg/azurevmdiskattachment/csi"
  version           = "1.0.0"
  virtualmachine_id = module.pbis-vm-resource-prod-centralus.virtual_machine_id
  manageddisk_id    = module.disk-pbis-internal-prod-centralus.managed_disk_id
}