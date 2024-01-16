 module "rediscachedb" {
    source  = "app.terraform.io/csiseg/rediscache/csi"
    version = "1.0.3"
    rediscache_name = "redis-loyaltyrewards-${var.env}-${var.loc}"
    location = module.resourcegroup.location
    resource_group_name = module.resourcegroup.name
    rediscache_capacity = 2
    rediscache_family = "C"
    rediscache_sku_name = "Standard"
    tags = local.tags
    user_assigned_identity_id = [module.azuremanagedidentity.mi_id]
 }