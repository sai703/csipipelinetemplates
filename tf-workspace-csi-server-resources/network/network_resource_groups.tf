# Prod resource groups
module "resourcegroup-eastus2" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.9"
  name     = "internal-server-dcops-prod-eastus2"
  location = "EastUS2"
  tags     = local.eastus2_tags
}


module "resourcegroup-centralus" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.9"
  name     = "internal-server-dcops-prod-centralus"
  location = "CentralUS"
  tags     = local.centralus_tags
}

# Nonprod resource groups
module "resourcegroup-nonprod-eastus2" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.9"
  name     = "internal-server-dcops-nonprod-eastus2"
  location = "EastUS2"
  tags     = local.eastus2_nonprod_tags
}

module "resourcegroup-nonprod-centralus" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.9"
  name     = "internal-server-dcops-nonprod-centralus"
  location = "CentralUS"
  tags     = local.centralus_nonprod_tags
}