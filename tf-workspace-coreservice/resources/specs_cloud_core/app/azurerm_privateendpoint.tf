module "pe-stspecscloudcore" {
  source                         = "app.terraform.io/csiseg/privateendpoint/csi"
  version                        = "1.0.1"
  location                       = var.location
  privateendpointname            = "pe-stspecscloudcore-${var.env}-${var.location}"
  resource_group_name            = module.rg-specscloudcore-ebg.name
  subnet_id                      = var.private_endpoint_subnet_id
  private_connection_name        = "pc-stspecscloudcore-${var.env}-${var.location}"
  private_connection_resource_id = module.stspecscloudcore.storage_account_id
  subresource_names              = ["blob"]
  dns_name                       = "dns-stspecscloudcore-${var.env}-${var.location}"
  private_dns_zone_ids           = var.storage_account_dns_zone_ids
  is_manual_connection           = "false"
  tags                           = var.tags
}

module "pe-func-specscloudcore" {
  source                         = "app.terraform.io/csiseg/privateendpoint/csi"
  version                        = "1.0.1"
  location                       = var.location
  privateendpointname            = "pe-func-specscloudcore-${var.env}-${var.location}"
  resource_group_name            = module.rg-specscloudcore-ebg.name
  subnet_id                      = var.private_endpoint_subnet_id
  private_connection_name        = "pc-func-specscloudcore-${var.env}-${var.location}"
  private_connection_resource_id = module.func-specscloudcore-specs-ebg.id
  subresource_names              = ["sites"]
  dns_name                       = "dns-func-specscloudcore-${var.env}-${var.location}"
  private_dns_zone_ids           = var.function_app_dns_zone_ids
  is_manual_connection           = "false"
  tags                           = var.tags
}