

module "role-assignment-tcc-appcf-data-reader" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appcs-fdxcustomer-ebg.id
  role_definition_name = var.role_appcfg_data_reader
  principal_id         = module.uami-fdxcustomer-ebg.mi_principal_id
}

