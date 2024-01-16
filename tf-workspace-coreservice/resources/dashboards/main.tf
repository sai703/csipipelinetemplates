## Will reference module "./loyalty_rewards" 
module "shared_tags" {
  source         = "app.terraform.io/csiseg/shared-tags/csi"
  version        = "0.1.1"
  environment    = local.env_long_name
  project        = "Core Services"
  dept           = "EBG"
  service        = "Loyalty Rewards"
  transformation = true
}

module "loylatyrewards_dashboards" {
  source = "./loyalty_rewards"
  tags   = module.shared_tags.tags
  env    = var.env
  location = var.location
  resource_group_name = "rg-loyaltyrewards-ebg-${var.env}-${var.location}"
  function_apps = [
    "account",
    "winner",
    "drawing",
    "transaction",
    "changefeedtransbyacc",
    "changefeedtransbydate",
    "transactionruns",
    "transactionsubscriber"
  ]
}
