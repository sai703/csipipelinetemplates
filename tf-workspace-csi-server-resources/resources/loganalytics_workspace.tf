module "internal-server-resources-logAnalytics-eastus2" {
  source              = "app.terraform.io/csiseg/logAnalytics/csi"
  version             = "1.0.7"
  name                = "log-internal-services-dcops-eastus2"
  resource_group_name = module.ebze-vm-resourcegroup-eastus2.name
  location            = "eastus2"
  scope               = module.ebze-vm-resourcegroup-eastus2.name
  tags                = local.eastus2_tags

  solutions = [
    {
      solution_name = "ContainerInsights",
      publisher     = "Microsoft",
      product       = "OMSGallery/ContainerInsights",
    },
  ]
}

module "internal-server-resources-logAnalytics-centralus" {
  source              = "app.terraform.io/csiseg/logAnalytics/csi"
  version             = "1.0.7"
  name                = "log-internal-services-dcops-central"
  resource_group_name = module.ebze-vm-resourcegroup-centralus.name
  location            = "centralus"
  scope               = module.ebze-vm-resourcegroup-centralus.name
  tags                = local.centralus_tags

  solutions = [
    {
      solution_name = "ContainerInsights",
      publisher     = "Microsoft",
      product       = "OMSGallery/ContainerInsights",
    },
  ]
}
