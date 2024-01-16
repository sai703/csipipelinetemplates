module "subnet-func-specscloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-specscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_specscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-translatescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                      = "2.0.7"
  servicename                                    = "subnet-func-translatescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_translatescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-ddatransactionscloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ddatransactionscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_ddatransactionscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-ddaaccountscloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ddaaccountscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_ddaaccountscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-runningbalance-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-runningbalance-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_runningbalance_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-imagescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-imagescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_imagescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-transactionchangescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-transactionchangescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_transactionchangescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-accountchangescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-accountchangescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_accountchangescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-rtscloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-rtscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_rtscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-ddamemocloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ddamemocloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_ddamemocloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-rtsnewaccountscloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-rtsnewaccountscloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_rtsnewaccountscloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-rtsbalancescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-rtsbalancescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_rtsbalancescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-translateschangescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-translateschangescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_translateschangescloudcore_subnet_prefix
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = var.vnet_rg
  vnet_name                                      = var.vnet_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}

module "subnet-func-specschangescloudcore-ddacloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-specschangescloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.ddacloudcore_specschangescloudcore_subnet_prefix
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
  servicename                                    = "subnet-pe-ddacloudcore-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_PE
  resource_group_name                            = var.vnet_rg
  virtual_network_name                           = var.vnet_name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}