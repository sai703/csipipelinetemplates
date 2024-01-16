locals {
  environments = {
    nonprod = "NonProd"
    uat     = "UAT"
    prod    = "Prod"
  }

  tag_environment = lookup(local.environments, var.env)
}

module "shared-tags" {
  source         = "app.terraform.io/csiseg/shared-tags/csi"
  version        = "0.1.2"
  dept           = "EBG"
  environment    = local.tag_environment
  project        = "Core Services"
  service        = "Monitoring"
  transformation = true
}

module "rg-corservices-monitoring" {
  source   = "app.terraform.io/csiseg/resourcegroup/csi"
  version  = "1.0.10"
  name     = "rg-corservices-monitoring-${var.env}-${var.location}"
  location = var.location
  tags     = module.shared-tags.tags
}

module "log_analytics" {
  source              = "app.terraform.io/csiseg/logAnalytics/csi"
  version             = "1.0.8"
  name                = "log-corservices-monitoring-${var.env}-${var.location}"
  resource_group_name = module.rg-corservices-monitoring.name
  scope               = module.rg-corservices-monitoring.id
  location            = module.rg-corservices-monitoring.location
  tags                = module.shared-tags.tags
}

module "action_group" {
  for_each = var.action_groups

  source  = "app.terraform.io/csiseg/monitoractiongroup/csi"
  version = "1.1.3"

  name                = each.key
  short_name          = each.value.short_name
  resource_group_name = module.rg-corservices-monitoring.name
  email_receiver      = each.value.email_receiver
  webhook_receiver    = each.value.webhook_receiver
  tags                = module.shared-tags.tags
}

module "metric-alerts" {
  for_each = var.alerts

  source  = "app.terraform.io/csiseg/azure-metricalert/csi"
  version = "2.0.0"

  name                = each.key
  resource_group_name = module.rg-corservices-monitoring.name
  scopes              = each.value.log_analytics.id
  criteria            = each.value.criteria
  action_group_id     = each.value.action_group.id
  auto_mitigate       = each.value.auto_mitigate
  description         = each.value.description
  frequency           = each.value.frequency
  tags                = module.shared-tags.tags
}

module "scheduled_query_rule_alerts" {
  for_each = var.scheduled_query_rule_alerts

  source  = "app.terraform.io/csiseg/azure-monitor-scheduled-query-rules-alert-v2/csi"
  version = "2.1.7"

  name                             = each.key
  description                      = each.value.description
  resource_group_name              = module.rg-corservices-monitoring.name
  location                         = module.rg-corservices-monitoring.location
  display_name                     = each.value["display_name"]
  enabled                          = each.value["enabled"]
  query_time_range_override        = each.value["query_time_range_override"]
  mute_action_after_alert_duration = each.value["mute_action_after_alert_duration"]
  auto_mitigation_enabled          = each.value["auto_mitigation_enabled"]
  workspace_alerts_storage_enabled = each.value["workspace_alerts_storage_enabled"]
  evaluation_frequency             = each.value["evaluation_frequency"]
  skip_query_validation            = each.value["skip_query_validation"]
  window_duration                  = each.value["window_duration"]
  severity                         = each.value["severity"]
  criteria                         = each.value["criteria"]
  scopes                           = [module.log_analytics.resource_id]
  tags                             = module.shared-tags.tags

  action = [{
    action_groups = [module.action_group[each.value["action_group_name"]].id]
  }]
}
