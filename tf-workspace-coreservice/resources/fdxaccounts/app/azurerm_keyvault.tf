module "kv-fdxaccount" {
  source                          = "app.terraform.io/csiseg/keyvault/csi"
  version                         = "1.3.8"
  name                            = "kv-fdxacct${var.env}${var.loc}"
  resource_group_name             = module.resourcegroup.name
  location                        = module.resourcegroup.location
  sku_name                        = var.kv_sku_name
  soft_delete_retention_days      = var.kv_soft_delete_retention_days
  purge_protection_enabled        = var.kv_purge_protection_enabled
  enabled_for_deployment          = var.kv_enabled_for_deployment
  enabled_for_disk_encryption     = var.kv_enabled_for_disk_encryption
  enabled_for_template_deployment = var.kv_enabled_for_template_deployment
  enable_rbac_authorization       = var.kv_enable_rbac_authorization
  secrets = [
  ]
  tags = local.tags
  depends_on = [module.resourcegroup]
} 
