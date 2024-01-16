module "vnet" {

  source              = "app.terraform.io/csiseg/virtualnetwork/csi"
  version             = "2.0.1"
  team_name           = "coreservices"
  group_name          = "ebg"
  environment         = var.env
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  address_space       = var.address_space
  tags                = local.tags
  //depends_on = [module.resourcegroup-eastus2]
}