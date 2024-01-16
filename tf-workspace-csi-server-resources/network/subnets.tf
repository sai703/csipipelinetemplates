module "vm-subnet-eastus2" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "1.0.7"
  servicename                                    = "vm-subnet-internal-dcops-prod-eastus2"
  subnet_address_prefix                          = ["10.226.2.0/24"]
  resource_group_name                            = module.resourcegroup-eastus2.name
  virtual_network_name                           = module.server-resources-vnet-eastus2.name
  service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.eastus2_tags
}

module "vm-subnet-centralus" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "1.0.3"
  servicename                                    = "vm-subnet-internal-dcops-prod-centralus"
  subnet_address_prefix                          = ["10.227.2.0/24"]
  resource_group_name                            = module.resourcegroup-centralus.name
  virtual_network_name                           = module.server-resources-vnet-centralus.name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.centralus_tags
}

# module.snet-private-endpoints-eastus2
module "snet-private-endpoints-eastus2" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "1.0.3"
  servicename                                    = "snet-private-endpoints-eastus2"
  subnet_address_prefix                          = ["10.226.3.0/27"]
  resource_group_name                            = module.resourcegroup-eastus2.name
  virtual_network_name                           = module.server-resources-vnet-eastus2.name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.eastus2_tags
}

# module.snet-private-endpoints-centralus
module "snet-private-endpoints-centralus" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "1.0.3"
  servicename                                    = "snet-private-endpoints-centralus"
  subnet_address_prefix                          = ["10.227.3.0/27"]
  resource_group_name                            = module.resourcegroup-centralus.name
  virtual_network_name                           = module.server-resources-vnet-centralus.name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.centralus_tags
}
