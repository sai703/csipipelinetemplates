module "routetable-specscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.statementscloudcore-routetable.id
  subnet_id      = module.subnet-func-specscloudcore-statementscloudcore.subnet_id
}

module "routetable-ddaacctscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.statementscloudcore-routetable.id
  subnet_id      = module.subnet-func-ddaacctscloudcore-statementscloudcore.subnet_id
}

module "routetable-ststmtcfprovidermap" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.statementscloudcore-routetable.id
  subnet_id      = module.subnet-func-cfprovidermap-statementscloudcore.subnet_id
}
