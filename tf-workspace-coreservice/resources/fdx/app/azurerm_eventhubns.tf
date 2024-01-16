//Event hub namespace
module "eventhubns-fdx" {
  source                              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version                             = "1.0.4"
  eventhub_namespace                  = "evhns-fdx-${var.env}${var.loc}"
  location                            = module.resourcegroup-fdx.location
  resource_group_name                 = module.resourcegroup-fdx.name
  sku_name                            = var.sku_name
  capacity                            = 2
  zone_redundant                      = false
  identity_type                       = var.id_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  tags                                = local.tags
}

module "eventhub-namespace-authorization-rule-fdx" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evh-auth-fdx-${var.env}${var.loc}"
  namespace_name      = module.eventhubns-fdx.name
  resource_group_name = module.resourcegroup-fdx.name
  listen              = "true"
  send                = "true"
  manage              = "true"

}