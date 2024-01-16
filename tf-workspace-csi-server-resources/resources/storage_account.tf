module "storage-account-ubuntu-image-eastus2" {
  source                       = "app.terraform.io/csiseg/storage-account/csi"
  version                      = "1.1.5"
  account_name                 = "UbuntuImage2004"
  resource_group_name          = module.ebze-vm-resourcegroup-eastus2.name
  location                     = "eastus2"
  replication_type             = "GRS"
  account_tier                 = "Standard"
  subnet_ids                   = [data.azurerm_subnet.vm-subneteastus2.id]
  tags                         = local.eastus2_tags
  network_rules_default_action = "Allow"
}

# module.stg-ado-images-centralus
module "stg-ado-images-centralus" {
  source                     = "app.terraform.io/csiseg/storageaccount/csi"
  version                    = "1.0.9"
  name                       = "stgadoimagescus"
  resource_group_name        = module.ebze-vm-resourcegroup-centralus.name
  location                   = module.ebze-vm-resourcegroup-centralus.location
  tags                       = local.centralus_tags
  private_endpoint_subnet_id = data.azurerm_subnet.snet-private-endpoints-centralus.id
}