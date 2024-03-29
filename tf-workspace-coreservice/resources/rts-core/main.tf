module "rts-core-centralus" {
  source                             = "./app"
  env                                = var.env
  loc                                = var.loc
  short_loc                          = var.short_loc
  eventhubns_private_connection_name = var.eventhubns_private_connection_name
  eventhubns_subresource_names       = var.eventhubns_subresource_names
  is_manual_connection               = var.is_manual_connection
  eventhubns_dns_name                = var.eventhubns_dns_name
  subnet_id_PE                       = var.subnet_id_PE
  tf_sa_client_id                    = var.tf_sa_client_id
  tf_sa_client_secret                = var.tf_sa_client_secret
  tf_sa_subscription_id              = var.tf_sa_subscription_id
  tf_sa_tenant_id                    = var.tf_sa_tenant_id
  network_subscription_id            = var.network_subscription_id
  id_type                            = var.id_type
  sku_name                           = var.sku_name
  vnet_rg                            = var.vnet_rg
  vnet_name                          = var.vnet_name
}
