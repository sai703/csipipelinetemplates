//Event hub namespace
module "eventhubns-rts-core" {
  source                              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version                             = "1.0.4"
  eventhub_namespace                  = "evhns-rts-core-${var.env}${var.loc}"
  location                            = module.resourcegroup-rts-core.location
  resource_group_name                 = module.resourcegroup-rts-core.name
  sku_name                            = var.sku_name
  capacity                            = 2
  zone_redundant                      = false
  identity_type                       = var.id_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  // public_network_access_enabled    = var.is_public_network_access_enabled
  tags                                = local.tags
}

module "eventhub-namespace-authorization-rule-rts-core" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evh-auth-rts-core-${var.env}${var.loc}"
  namespace_name      = module.eventhubns-rts-core.name
  resource_group_name = module.resourcegroup-rts-core.name
  listen              = "true"
  send                = "true"
  manage              = "true"

}