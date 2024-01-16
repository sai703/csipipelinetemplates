module "routetable-pvtendpoint" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacore-routetable.id
  subnet_id      = module.ubnet-privateendpoint.subnet_id

}

