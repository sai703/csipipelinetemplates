# module.kv-cctrans-ebg
module "kv-cctrans-ebg" {
  source                                    = "app.terraform.io/csiseg/keyvault/csi"
  version                                   = "1.5.0"
  name                                      = "kvcctransebg${var.env}${local.short_region}"
  resource_group_name                       = module.rg-cloudcoretransfer-ebg.name
  location                                  = module.rg-cloudcoretransfer-ebg.location
  tenant_id                                 = data.azurerm_client_config.current.tenant_id
  sku_name                                  = "standard"
  monitoring_eventhub_name                  = var.monitoring_eventhub_name
  monitoring_eventhub_authorization_rule_id = var.monitoring_eventhub_authorization_rule_id
  enabled_log = [{
    category_group = "audit"
    retention_policy = {
      enabled = true
      days    = 7
    }
  }]
  tags = var.tags
}