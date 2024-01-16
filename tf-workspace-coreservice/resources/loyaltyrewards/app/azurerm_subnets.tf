module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename = "subnet-pe-loyaltyrewards-ebg-${var.env}-${var.loc}"
  subnet_address_prefix = var.subnet_id_pe //["10.225.112.64/26"]
  resource_group_name = var.resource_group_name
  virtual_network_name = var.private_network_name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}

module "subnet-func-account" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-account-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_account //["10.225.112.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-drawing" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-drawing-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_drawing //["10.225.113.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-transactionruns" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-transcruns-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_transactionruns //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-transaction" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-transc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_transaction //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}


module "subnet-func-transactionsubscr" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-transcsubsr-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_transactionsubscr //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-winner" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-winner-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_winner //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-changefeedbyacc" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-chngfdbyacc-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_changefeedbyacc //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-changefeedbydate" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-lyltyrwrds-chngfdbydate-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_changefeedbydate //["10.225.114.16/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name = var.resource_group_name
  vnet_name = var.virtual_network_name
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}