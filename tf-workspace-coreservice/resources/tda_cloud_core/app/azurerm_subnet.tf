module "subnet-func-tdacloudcore-specscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-specscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_specscloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-translatescloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-translatescc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_translatescloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-tdatransactionscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-tdatranscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_tdatransactionscloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-tdaaccountscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-tdaacctscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_tdaaccountscloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-customercloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-custcc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_customercloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-imagescloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-imagescc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_imagescloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-transactionchangescloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-transchgscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_transactionchangescloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-accountchangescloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-acctchgscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_accountchangescloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-rtscloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-rtscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_rtscloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-tdacloudcore-customerchangescloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-tdacc-custchgscc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_customerchangescloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename                                    = "subnet-pe-tdacc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_pe
  resource_group_name                            = "rg-coreservices-ebg-${var.main_env_type}-${var.loc}"
  virtual_network_name                           = "vnet-coreservices-ebg-${var.main_env_type}-${var.loc}"
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}
