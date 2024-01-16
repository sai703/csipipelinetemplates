module "shared_tags" {
  source         = "app.terraform.io/csiseg/shared-tags/csi"
  version        = "0.1.1"
  environment    = local.env_long_name
  project        = "Core Services"
  dept           = "EBG"
  service        = "Cloud Core Transfer"
  transformation = true
}

# module.cloudcoretransfer
module "cloudcoretransfer" {
  for_each                   = var.regions
  source                     = "./app"
  env                        = var.env
  location                   = each.key
  tags                       = module.shared_tags.tags
  private_endpoint_subnet_id = each.value.private_endpoint_subnet_id
  evhns_dns_zone_ids         = each.value.evhns_dns_zone_ids
  monitoring_eventhub_name                  = each.value.monitoring_eventhub_name
  monitoring_eventhub_authorization_rule_id = each.value.monitoring_eventhub_authorization_rule_id
}