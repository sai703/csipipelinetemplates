module "role-assignment-fdx-app-config" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig-fdx.id
  role_definition_name = var.role_app_config_data_reader//"App Configuration Data Reader"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-ddaaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-ddaaccountscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-tdaaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdaaccountscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-tdatransactionscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdatransactionscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-lnsaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-lnsaccountscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-lnstransactionscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-lnstransactionscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-locaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-locaccountscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-loctransactionscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-loctransactionscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-cifcloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-cifcloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}


