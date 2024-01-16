module "eventhubns" {
  source                              = "app.terraform.io/csiseg/eventhub-namespace/csi"
  version                             = "1.0.4"
  eventhub_namespace                  = "evhns-tdacloudcore-ebg-${var.env}-${var.loc}"
  location                            = module.resourcegroup.location
  resource_group_name                 = module.resourcegroup.name
  sku_name                            = var.eh_sku_name
  capacity                            = 2
  zone_redundant                      = false
  identity_type                       = var.id_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  tags                                = local.tags
}

module "eventhub-namespace-authorization-rule" {
  source              = "app.terraform.io/csiseg/eventhub-namespace-authorization-rule/csi"
  version             = "1.0.0"
  name                = "evhns-auth-tdacloudcore-ebg-${var.env}-${var.loc}"
  namespace_name      = module.eventhubns.name
  resource_group_name = module.resourcegroup.name
  listen              = "true"
  send                = "true"
  manage              = "true"
}