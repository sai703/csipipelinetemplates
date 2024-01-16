module "appconfig" {
  source                              = "app.terraform.io/csiseg/appconfig/csi"
  version                             = "1.0.1"
  name                                = "appcs-loyaltyrewards-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.appconfig_sku
  identity_type                       = var.appconfig_identity_type
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
   keys = [
    { key  = var.appconfig
      type = var.type
    value = var.appconfig_value },
    { key = var.appconfig_1
      type = var.type 
      value = var.appconfig_value_1}   
  ]
  tags       = local.tags
  depends_on = [module.resourcegroup]
}
