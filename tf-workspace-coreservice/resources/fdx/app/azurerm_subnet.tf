module "subnet-func-ddatransactions-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-ddatransactions-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_ddatransactions_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-ddaaccounts-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-ddaaccounts-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_ddaaccounts_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-lnstransactions-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lnstransactions-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_lnstransactions_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-lnsaccounts-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lnsaccounts-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_lnsaccounts_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-tdatransactions-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdatransactions-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_tdatransactions_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-tdaaccounts-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdaaccounts-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_tdaaccounts_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-cif-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-cif-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.fdx_cif_subnet_prefix
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
  servicename                                    = "subnet-pe-fdx-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_PE
  resource_group_name                            = var.vnet_rg
  virtual_network_name                           = var.vnet_name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}