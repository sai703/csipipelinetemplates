module "subnet-func-SetById" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-setbyid-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_SetById //["10.225.113.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-SetByTransactionId" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-SetByTransactionId-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_SetByTransactionId //["10.225.114.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-ItemById" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-ItemById-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_ItemById //["10.225.125.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-TransactionSubscriber" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-TransactionSubscriber-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_TransactionSubscriber //["10.225.123.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-NuPointException" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-NuPointException-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_NuPointException //["10.225.127.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-MeridianException" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-MeridianException-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_MeridianException //["10.225.126.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-x9" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-x9-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_x9 //["10.225.115.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}

module "subnet-func-x9Error" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-x9Error-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_x9Error //["10.225.116.0/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}



module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename = "subnet-pe-imaging-ebg-${var.env}-${var.loc}"
  subnet_address_prefix = var.subnet_id_PE //["10.225.116.0/29"]
  resource_group_name = "rg-coreservices-ebg-nonprod-${var.loc}"
  virtual_network_name = "vnet-coreservices-ebg-nonprod-${var.loc}"
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}

module "subnet-func-Http-imaging" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "subnet-func-http-imaging-ebg-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_httpfun //["10.225.114.224/29"]
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.loc}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.loc}"
  tags                                           = local.tags
  enforce_private_link_endpoint_network_policies = true
}
