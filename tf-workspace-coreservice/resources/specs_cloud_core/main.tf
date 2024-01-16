module "shared_tags" {
  source         = "app.terraform.io/csiseg/shared-tags/csi"
  version        = "0.1.1"
  environment    = local.env_long_name
  project        = "Core Services"
  dept           = "EBG"
  service        = "Specs Cloud Core"
  transformation = true
}

# module.specscloudcore
module "specscloudcore" {
  for_each                                  = var.regions
  source                                    = "./app"
  env                                       = var.env
  location                                  = each.key
  tags                                      = module.shared_tags.tags
  private_endpoint_subnet_id                = each.value.private_endpoint_subnet_id
  virtual_network_name                      = each.value.virtual_network_name
  virtual_network_resource_group            = each.value.virtual_network_resource_group
  storage_account_dns_zone_ids              = each.value.storage_account_dns_zone_ids
  function_app_dns_zone_ids                 = each.value.function_app_dns_zone_ids
  func_subnet_address_prefixes              = each.value.func_subnet_address_prefixes
  firewall_ip                               = each.value.firewall_ip
  monitoring_eventhub_name                  = each.value.monitoring_eventhub_name
  monitoring_eventhub_authorization_rule_id = each.value.monitoring_eventhub_authorization_rule_id
}