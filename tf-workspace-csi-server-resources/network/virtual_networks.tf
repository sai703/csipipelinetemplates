# Prod vnets
module "server-resources-vnet-eastus2" {
  source              = "app.terraform.io/csiseg/virtualnetwork/csi"
  version             = "2.0.1"
  team_name           = "internal"
  group_name          = "dcops"
  environment         = "prod"
  resource_group_name = module.resourcegroup-eastus2.name
  location            = "eastus2"
  address_space       = ["10.226.2.0/23"]
  tags                = local.eastus2_tags
}
module "server-resources-vnet-centralus" {
  source              = "app.terraform.io/csiseg/virtualnetwork/csi"
  version             = "2.0.1"
  team_name           = "internal"
  group_name          = "dcops"
  environment         = "prod"
  resource_group_name = module.resourcegroup-centralus.name
  location            = "centralus"
  address_space       = ["10.227.2.0/23"]
  tags                = local.centralus_tags
}

# Nonprod vnets

module "server-resources-vnet-nonprod-eastus2" {
  source              = "app.terraform.io/csiseg/virtualnetwork/csi"
  version             = "2.0.1"
  team_name           = "internal"
  group_name          = "dcops"
  environment         = "nonprod"
  resource_group_name = module.resourcegroup-nonprod-eastus2.name
  location            = "eastus2"
  address_space       = ["10.224.2.0/23"]
  tags                = local.eastus2_nonprod_tags
}

module "server-resources-vnet-nonprod-centralus" {
  source              = "app.terraform.io/csiseg/virtualnetwork/csi"
  version             = "2.0.1"
  team_name           = "internal"
  group_name          = "dcops"
  environment         = "nonprod"
  resource_group_name = module.resourcegroup-nonprod-centralus.name
  location            = "centralus"
  address_space       = ["10.225.2.0/23"]
  tags                = local.centralus_nonprod_tags
}