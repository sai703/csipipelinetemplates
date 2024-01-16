# module "role-assignment-receiver-evh-specscloudcore" {
#   source               = "app.terraform.io/csiseg/role-assignment/csi"
#   version              = "1.0.1"
#   scope                = data.azurerm_eventhub.evh-specscloudcore.id
#   role_definition_name = var.role_data_receiver
#   principal_id         = module.azuremanagedidentity.mi_principal_id
# }

// module "role-assignment-receiver-evh-translatescloudcore" {
//   source               = "app.terraform.io/csiseg/role-assignment/csi"
//   version              = "1.0.1"
//   scope                = data.azurerm_eventhub.evh-translatescloudcore.id
//   role_definition_name = var.role_data_receiver
//   principal_id         = module.azuremanagedidentity.mi_principal_id
// }

# module "role-assignment-receiver-evh-tdacustomerscore" {
#   source               = "app.terraform.io/csiseg/role-assignment/csi"
#   version              = "1.0.1"
#   scope                = data.azurerm_eventhub.evh-tdacustomerscore.id
#   role_definition_name = var.role_data_receiver
#   principal_id         = module.azuremanagedidentity.mi_principal_id
# }

# module "role-assignment-receiver-evh-tdatransactionscore" {
#   source               = "app.terraform.io/csiseg/role-assignment/csi"
#   version              = "1.0.1"
#   scope                = data.azurerm_eventhub.evh-tdatransactionscore.id
#   role_definition_name = var.role_data_receiver
#   principal_id         = module.azuremanagedidentity.mi_principal_id
# }

# module "role-assignment-receiver-evh-tdaaccountscore" {
#   source               = "app.terraform.io/csiseg/role-assignment/csi"
#   version              = "1.0.1"
#   scope                = data.azurerm_eventhub.evh-tdaaccountscore.id
#   role_definition_name = var.role_data_receiver
#   principal_id         = module.azuremanagedidentity.mi_principal_id
# }

module "role-assignment-sender-evh-tdaaccountscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdaaccountscloudcore.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-sender-evh-tdatransactionscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdatransactionscloudcore.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-sender-evh-tdacustomerscloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdacustomerscloudcore.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-sender-evh-tdaaccountchangescloudcore" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-tdaaccountchangescloudcore.id
  role_definition_name = var.role_data_sender
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-kv-secret-user" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.keyvault.id
  role_definition_name = var.role_kv_secret_user
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-appconfig-data-reader" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig.id
  role_definition_name = var.role_appconfig_data_reader
  principal_id         = module.azuremanagedidentity.mi_principal_id
} 