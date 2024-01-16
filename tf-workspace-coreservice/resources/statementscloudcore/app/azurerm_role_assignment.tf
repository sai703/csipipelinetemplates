module "role-assignment-statementscloudcore-app-config" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig-statementscloudcore.id
  role_definition_name = var.role_app_config_data_reader//"App Configuration Data Reader"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-specscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-specscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-ddaaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-ddaaccountscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}


