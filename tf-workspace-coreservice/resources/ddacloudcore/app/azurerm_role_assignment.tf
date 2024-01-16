module "role-assignment-ddacloudcore-app-config" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig-ddacloudcore.id
  role_definition_name = var.role_app_config_data_reader//"App Configuration Data Reader"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}


module "role-assignment-evhns-ddacore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub_namespace.evhns_ddacore.id
  role_definition_name = var.role_data_Owner
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evhns-specscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub_namespace.evhns_specscloudcore.id
  role_definition_name = var.role_data_Owner
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evhns-rtscore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub_namespace.evhns_rtscore.id
  role_definition_name = var.role_data_Owner
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-rtsddamaster" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.evh_rtsddamaster.id
  role_definition_name = var.role_data_receiver
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-rtsmontrx" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.evh_rtsmontrx.id
  role_definition_name = var.role_data_receiver
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-rtsnewacct" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.evh_rtsnewacct.id
  role_definition_name = var.role_data_receiver
  principal_id         = module.azuremanagedidentity.mi_principal_id
}


module "role-assignment-evh-ddaaccountscore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.ddaaccountscore_eventhub.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-ddatransactionscore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.ddatransactionscore_eventhub.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-ddaaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-ddaaccountscloudcore.id
  role_definition_name = var.role_data_sender//"Azure Event Hubs Data Sender"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

// module "role-assignment-evh-ddatransactionscloudcore" {
//   source               = "app.terraform.io/csiseg/role-assignment/csi"
//   version              = "1.0.1"
//   scope                = module.eventhub-ddaaccountscloudcore.id
//   role_definition_name = var.role_data_sender//"Azure Event Hubs Data Sender"
//   principal_id         = module.azuremanagedidentity.mi_principal_id
// }

module "role-assignment-evh-translatescloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-ddatransactionscloudcore.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-evh-specscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = data.azurerm_eventhub.specscloudcore_eventhub.id
  role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

// module "role-assignment-evh-imagetransactionscloudcore" {
//   source               = "app.terraform.io/csiseg/role-assignment/csi"
//   version              = "1.0.1"
//   scope                = module.eventhub-ddatransactionscloudcore.id
//   role_definition_name = var.role_data_receiver//"Azure Event Hubs Data Receiver"
//   principal_id         = module.azuremanagedidentity.mi_principal_id
// }




