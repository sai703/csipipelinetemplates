module "subnet-privateendpoint" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.9"
  servicename                                    = "subnet-pe-rts-core-${var.env}-${var.loc}"
  subnet_address_prefix                          = var.subnet_id_PE
  resource_group_name                            = var.vnet_rg
  virtual_network_name                           = var.vnet_name
  enforce_private_link_endpoint_network_policies = true
  tags                                           = local.tags
}