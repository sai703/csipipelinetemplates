module "disk-ebze-internal-prod-eastus2" {
  source           = "app.terraform.io/csiseg/azuremanageddisk/csi"
  version          = "1.0.0"
  manageddisk_name = "disk-ebze-internal-dcops-eastus2"
  location         = "eastus2"
  mgdiskrg_name    = module.ebze-vm-resourcegroup-eastus2.name
  vmstorage_type   = "Premium_LRS"
  vmdisk_size      = "256"
  tags             = local.eastus2_tags
}

module "disk-pbis-internal-prod-eastus2" {
  source           = "app.terraform.io/csiseg/azuremanageddisk/csi"
  version          = "1.0.0"
  manageddisk_name = "disk-pbis-internal-dcops-eastus2"
  location         = "eastus2"
  mgdiskrg_name    = module.ebze-vm-resourcegroup-eastus2.name
  vmstorage_type   = "Premium_LRS"
  vmdisk_size      = "256"
  tags             = local.eastus2_tags
}

module "disk-ebze-internal-prod-centralus" {
  source           = "app.terraform.io/csiseg/azuremanageddisk/csi"
  version          = "1.0.0"
  manageddisk_name = "disk-ebze-internal-dcops-centralus"
  location         = "centralus"
  mgdiskrg_name    = module.ebze-vm-resourcegroup-centralus.name
  vmstorage_type   = "Premium_LRS"
  vmdisk_size      = "256"
  tags             = local.eastus2_tags
}

module "disk-pbis-internal-prod-centralus" {
  source           = "app.terraform.io/csiseg/azuremanageddisk/csi"
  version          = "1.0.0"
  manageddisk_name = "disk-pbis-internal-dcops-centralus"
  location         = "centralus"
  mgdiskrg_name    = module.ebze-vm-resourcegroup-centralus.name
  vmstorage_type   = "Premium_LRS"
  vmdisk_size      = "256"
  tags             = local.eastus2_tags
}

