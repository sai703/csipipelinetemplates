module "stspecscloudcore" {
  source                       = "app.terraform.io/csiseg/storage-account/csi"
  version                      = "1.1.10"
  account_name                 = "stspecscloudcore${var.env}${local.short_region}"
  resource_group_name          = module.rg-specscloudcore-ebg.name
  location                     = module.rg-specscloudcore-ebg.location
  network_rules_default_action = "Allow"
  account_tier                 = "Standard"
  replication_type             = "LRS"
  tags                         = var.tags
  subnet_ids                   = [module.snet-func-specscloudcore-ebg.subnet_id]
}