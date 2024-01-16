
module "role-assignment-ccc-appcf-data-reader" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appcs-customercloudcore-ebg.id
  role_definition_name = var.role_appcfg_data_reader
  principal_id         = module.uami-customercloudcore-ebg.mi_principal_id
}

module "role-assignment-ccc-evh-datareceiver" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-customercloudcore.id
  role_definition_name = var.role_evh_data_receiver
  principal_id         = module.uami-customercloudcore-ebg.mi_principal_id
}