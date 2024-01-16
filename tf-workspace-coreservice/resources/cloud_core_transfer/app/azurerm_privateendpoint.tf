# module.pe-cloudcoretransfer
module "pe-cloudcoretransfer" {
  source                         = "app.terraform.io/csiseg/privateendpoint/csi"
  version                        = "1.0.1"
  location                       = var.location
  privateendpointname            = "pe-evhns-cloudcoretransfer-${var.env}-${var.location}"
  resource_group_name            = module.rg-cloudcoretransfer-ebg.name
  subnet_id                      = var.private_endpoint_subnet_id
  private_connection_name        = "pc-cloudcoretransfer-${var.env}-${var.location}"
  private_connection_resource_id = module.evhns-cloudcoretransfer-ebg.id
  subresource_names              = ["namespace"]
  dns_name                       = "dns-cloudcoretransfer-${var.env}-${var.location}"
  private_dns_zone_ids           = var.evhns_dns_zone_ids
  is_manual_connection           = "false"
  tags                           = var.tags
}

