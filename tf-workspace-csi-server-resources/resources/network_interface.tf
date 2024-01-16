module "ebze-vm-nic-eastus2" {
  source                        = "app.terraform.io/csiseg/azurenetworkinterface/csi"
  version                       = "1.0.4"
  nic_name                      = "nic-ebze-internal-dcops-eastus2"
  nicrg_name                    = module.ebze-vm-resourcegroup-eastus2.name
  location                      = "eastus2"
  subnet_id                     = data.azurerm_subnet.vm-subneteastus2.id
  ipconfiguration_name          = "nic-ipconfig-ebze-internal-dcops-eastus2"
  private_ip_address_allocation = "Static"
  private_address               = "10.226.2.5"
  tags                          = local.eastus2_tags
}
module "pbis-vm-nic-eastus2" {
  source                        = "app.terraform.io/csiseg/azurenetworkinterface/csi"
  version                       = "1.0.4"
  nic_name                      = "nic-pbis-internal-dcops-eastus2"
  nicrg_name                    = module.ebze-vm-resourcegroup-eastus2.name
  location                      = "eastus2"
  subnet_id                     = data.azurerm_subnet.vm-subneteastus2.id
  ipconfiguration_name          = "nic-ipconfig-ebze-internal-dcops-eastus2"
  private_ip_address_allocation = "Static"
  private_address               = "10.226.2.6"
  tags                          = local.eastus2_tags
}

module "ebze-vm-nic-centralus" {
  source                        = "app.terraform.io/csiseg/azurenetworkinterface/csi"
  version                       = "1.0.4"
  nic_name                      = "nic-ebze-internal-dcops-centralus"
  nicrg_name                    = module.ebze-vm-resourcegroup-centralus.name
  location                      = "centralus"
  subnet_id                     = data.azurerm_subnet.vm-subnetcentralus.id
  ipconfiguration_name          = "nic-ipconfig-ebze-internal-dcops-centralus"
  private_ip_address_allocation = "Static"
  private_address               = "10.227.2.5"
  tags                          = local.centralus_tags
}

module "pbis-vm-nic-centralus" {
  source                        = "app.terraform.io/csiseg/azurenetworkinterface/csi"
  version                       = "1.0.4"
  nic_name                      = "nic-pbis-internal-dcops-centralus"
  nicrg_name                    = module.ebze-vm-resourcegroup-centralus.name
  location                      = "centralus"
  subnet_id                     = data.azurerm_subnet.vm-subnetcentralus.id
  ipconfiguration_name          = "nic-ipconfig-ebze-internal-dcops-centralus"
  private_ip_address_allocation = "Static"
  private_address               = "10.227.2.6"
  tags                          = local.centralus_tags
}