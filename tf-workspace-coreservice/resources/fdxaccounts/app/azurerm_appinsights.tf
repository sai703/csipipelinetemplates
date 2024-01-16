module "applicationinsights_fdx" {
  source                     = "app.terraform.io/csiseg/applicationinsights/csi"
  version                    = "1.0.1"
  location                   = var.loc
  appinsightname             = "appi-fdxaccount-ebg-${var.env}-${var.loc}"
  resource_group_name        = module.resourcegroup.name
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.law.id
  tags                       = local.tags
}