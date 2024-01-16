module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename = "subnet-pe-ddacore-ebg-${var.env}-${var.loc}"
  subnet_address_prefix = var.subnet_id_pe //["10.225.116.0/29"]
  resource_group_name = "rg-coreservices-ebg-nonprod-${var.loc}"
  virtual_network_name = "vnet-coreservices-ebg-nonprod-${var.loc}"
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.service_tags
}