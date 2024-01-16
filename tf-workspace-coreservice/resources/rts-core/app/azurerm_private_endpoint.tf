module "privateendpoint-eventhubns-rts-core" {
  source                         = "app.terraform.io/csiseg/azureprivateendpoint/csi"
  version                        = "1.0.15"
  privateendpointname            = "pe-eventhubns-rtscore-${var.env}-${var.short_loc}"
  location                       = var.loc
  resource_group_name            = module.resourcegroup-rts-core.name
  subnet_id                      = module.subnet-privateendpoint.subnet_id
  private_connection_name        = var.eventhubns_private_connection_name
  private_connection_resource_id = module.eventhubns-rts-core.namespace_id
  subresource_names              = var.eventhubns_subresource_names
  is_manual_connection           = var.is_manual_connection
  dns_name                       = var.eventhubns_dns_name
  private_dns_zone_ids           = [data.azurerm_private_dns_zone.eventhns_dns.id]
  tags                           = local.tags
}