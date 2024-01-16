

module "role-assignment-tcc-appcf-data-reader" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appcs-translatescloudcore-ebg.id
  role_definition_name = var.role_appcfg_data_reader
  principal_id         = module.uami-translatescloudcore-ebg.mi_principal_id
}

module "role-assignment-tcc-evh-datareceiver" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.eventhub-translatescloudcore.id
  role_definition_name = var.role_evh_data_receiver
  principal_id         = module.uami-translatescloudcore-ebg.mi_principal_id
}
