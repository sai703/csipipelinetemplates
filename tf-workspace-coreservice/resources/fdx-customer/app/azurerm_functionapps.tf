module "service-plan-fdxcustomer" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "asp-func-fdxcustomer-subscribers-ebg-${var.env}-${var.location}"
  resource_group_name                 = module.rg-fdxcustomer-ebg.name
  location                            = var.location
  sku                                 = var.func_sku
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-fdxcustomer-subscribers-ebg-${var.env}-${var.location}"
  storage_account_name                = module.fdxcustomer-storage-account.name
  virtual_network_subnet_id           = module.subnet-func-fdxcustomer.subnet_id
  identity_type                       = var.identity_type
  user_assigned_identity_resource_ids = [module.uami-fdxcustomer-ebg.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.uami-fdxcustomer-ebg.mi_id
  function_app_settings = {
    "AZURE_CLIENT_ID"                          = module.uami-fdxcustomer-ebg.mi_client_id
  }
  depends_on = [module.subnet-func-fdxcustomer.subnet_id]
}