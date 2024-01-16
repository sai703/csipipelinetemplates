module "subnet-func-specscloudcore-statementscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-specscloudcorescc-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.statementscloudcore_specscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-ddaacctscloudcore-statementscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-ddaacctscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.statementscloudcore_ddaacctscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-cfprovidermap-statementscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-cfprovidermap-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.statementscloudcore_cfprovidermap_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}


module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename                                    = "subnet-pe-statementscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_PE
  resource_group_name                            = var.vnet_rg
  virtual_network_name                           = var.vnet_name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}