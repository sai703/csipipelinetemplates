module "ebze-vm-resourcegroup-eastus2" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "internal-server-dcops-vm-prod-eastus2"
  location = "EastUS2"
  tags     = local.eastus2_tags
}


module "ebze-vm-resourcegroup-centralus" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "internal-server-dcops-vm-prod-centralus"
  location = "CentralUS"
  tags     = local.centralus_tags
}

# module.rg-vm-images-ebze-eastus2
module "rg-vm-images-ebze-eastus2" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-vm-images-ebze-eastus2"
  location = "eastus2"
  tags     = local.eastus2_tags
}

# module.rg-vm-images-ebze-centralus
module "rg-vm-images-ebze-centralus" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-vm-images-ebze-centralus"
  location = "centralus"
  tags     = local.centralus_tags
}