# module.func-specscloudcore-specs-ebg
module "func-specscloudcore-specs-ebg" {
  source = "git@ssh.dev.azure.com:v3/csiseg/IMG/terraform-csi-function-app?ref=main"
  # source                          = "app.terraform.io/csiseg/function-app/csi"
  # version                         = "1.0.21"
  function_app                    = "func-specscloudcore-specs-ebg-${var.env}-${var.location}"
  resource_group_name             = module.rg-specscloudcore-ebg.name
  location                        = module.rg-specscloudcore-ebg.location
  storage_account_name            = module.stspecscloudcore.name
  tags                            = var.tags
  virtual_network_subnet_id       = module.snet-func-specscloudcore-ebg.subnet_id
  identity_type                   = "UserAssigned"
  vnet_route_enabled              = true
  key_vault_reference_identity_id = module.uami-specscloudcore-ebg.id
  app_service_plan                = "asp-specscloudcore-specs-ebg-${var.env}-${var.location}"

  user_assigned_identity_resource_ids = [
    module.uami-specscloudcore-ebg.id
  ]
}