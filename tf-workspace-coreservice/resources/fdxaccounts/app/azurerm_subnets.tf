module "subnet-func-ddatransactions" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ddatransactions-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_ddatransactions //["10.225.112.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-ddaaccounts" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ddaaccounts-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_ddaaccounts //["10.225.113.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-cif" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-cif-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_cif //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-privateendpoint-fdx" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename = "subnet-pe-fdxaccount-ebg-${var.env}-${var.loc}"
  subnet_address_prefix = var.subnet_id_pe //["10.225.112.64/26"]
  resource_group_name = "rg-coreservices-ebg-nonprod-${var.loc}"
  virtual_network_name = "vnet-coreservices-ebg-nonprod-${var.loc}"
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}