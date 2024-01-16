module "applicationinsights-statementscloudcore" {
  source                     = "app.terraform.io/csiseg/applicationinsights/csi"
  version                    = "1.0.1"
  location                   = module.resourcegroup-statementscloudcore.location
  appinsightname             = "appi-statementscloudcore-${var.env}-${var.loc}"
  resource_group_name        = module.resourcegroup-statementscloudcore.name
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.law.id
  tags                       = local.tags
}