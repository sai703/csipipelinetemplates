module "service-plan-customercloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.18"
  app_service_plan                    = "asp-func-customercloudcore-subscribers-ebg-${var.env}-${var.location}"
  resource_group_name                 = var.rg_name_ccc
  location                            = var.location
  sku                                 = var.func_sku
  os_type                             = var.os_type
  tags                                = local.tags_ccc
  function_app                        = "func-customercloudcore-subscribers-ebg-${var.env}-${var.location}"
  storage_account_name                = module.customercloudcore-storage-account.name
  virtual_network_subnet_id           = module.subnet-func-customercloudcore.subnet_id
  subnet_id                           = module.subnet-func-customercloudcore.subnet_id
  identity_type                       = var.identity_type
  user_assigned_identity_resource_ids = [module.uami-customercloudcore-ebg.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.uami-customercloudcore-ebg.mi_id
  function_app_settings = {
    "AZURE_CLIENT_ID"                          = module.uami-customercloudcore-ebg.mi_client_id  
  }
}