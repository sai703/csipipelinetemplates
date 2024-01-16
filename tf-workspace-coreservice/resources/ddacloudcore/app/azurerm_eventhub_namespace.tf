//Event hub namespace
module "eventhubns-ddacloudcore" {
  source                              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version                             = "1.0.4"
  eventhub_namespace                  = "evhns-ddacloudcore-${var.env}${var.loc}"
  location                            = module.resourcegroup-ddacloudcore.location
  resource_group_name                 = module.resourcegroup-ddacloudcore.name
  sku_name                            = var.sku_name
  capacity                            = 2
  zone_redundant                      = false
  identity_type                       = var.id_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  tags                                = local.tags
}

module "eventhub-namespace-authorization-rule-ddacloudcore" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evh-auth-ddacloudcore-${var.env}${var.loc}"
  namespace_name      = module.eventhubns-ddacloudcore.name
  resource_group_name = module.resourcegroup-ddacloudcore.name
  listen              = "true"
  send                = "true"
  manage              = "true"

}