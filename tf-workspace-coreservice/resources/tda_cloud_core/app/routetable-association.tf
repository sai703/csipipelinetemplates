module "routetable-specscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-specscloudcore.subnet_id
}

module "routetable-translatescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-translatescloudcore.subnet_id
}

module "routetable-tdaaccountscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-tdaaccountscloudcore.subnet_id
}

module "routetable-customercloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-customercloudcore.subnet_id
}

module "routetable-imagescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-imagescloudcore.subnet_id
}

module "routetable-transactionchangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-transactionchangescloudcore.subnet_id
}

module "routetable-accountchangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-accountchangescloudcore.subnet_id
}

module "routetable-rtscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-rtscloudcore.subnet_id
}

module "routetable-customerchangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-func-tdacloudcore-customerchangescloudcore.subnet_id
}

module "routetable-priateendpoint" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.tdacc-routetable.id
  subnet_id      = module.subnet-privateendpoint.subnet_id
}