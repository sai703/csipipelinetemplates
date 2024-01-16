module "keyvault" {
  source                                    = "app.terraform.io/csiseg/keyvault/csi"
  version                                   = "1.5.0"
  name                                      = "kv-tda-ebg-${var.env}-${var.loc}"
  resource_group_name                       = module.resourcegroup.name
  location                                  = module.resourcegroup.location
  tenant_id                                 = data.azurerm_client_config.current.tenant_id
  sku_name                                  = var.kv_sku_name
  soft_delete_retention_days                = var.kv_soft_delete_retention_days
  purge_protection_enabled                  = var.kv_purge_protection_enabled
  enabled_for_deployment                    = var.kv_enabled_for_deployment
  enabled_for_disk_encryption               = var.kv_enabled_for_disk_encryption
  enabled_for_template_deployment           = var.kv_enabled_for_template_deployment
  enable_rbac_authorization                 = var.kv_enable_rbac_authorization
  monitoring_eventhub_name                  = var.kv_monitoring_eventhub_name
  monitoring_eventhub_authorization_rule_id = var.kv_monitoring_eventhub_authorization_rule_id
  enabled_log = [{
    category_group = "audit"
    retention_policy = {
      enabled = true
      days    = 7
    }
  }]
  tags = local.tags
}