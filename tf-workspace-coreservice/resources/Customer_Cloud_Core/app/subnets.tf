module "subnet-func-customercloudcore" {
  source                                         = "app.terraform.io/csiseg/subnets/csi"
  version                                        = "2.0.7"
  servicename                                    = "snet-func-customercloudcore-subscribers-ebg-${var.env}-${var.location}"
  subnet_address_prefix                          = var.subnet_id_customercloudcore
  service_delegation_name                        = "Microsoft.Web/serverFarms"
  actions                                        = ["Microsoft.Network/virtualNetworks/subnets/action"]
  resource_group_name                            = "rg-coreservices-ebg-nonprod-${var.location}"
  vnet_name                                      = "vnet-coreservices-ebg-nonprod-${var.location}"
  tags                                           = local.tags_ccc
  enforce_private_link_endpoint_network_policies = true
}
