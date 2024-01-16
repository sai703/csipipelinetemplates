module "routetable-ddatransactions" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-ddatransactions-fdx.subnet_id
}

module "routetable-ddaaccounts" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-ddaaccounts-fdx.subnet_id
}

module "routetable-lnstransactions" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-lnstransactions-fdx.subnet_id
}

module "routetable-lnsaccounts" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-lnsaccounts-fdx.subnet_id
}

module "routetable-tdatransactions" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-tdatransactions-fdx.subnet_id
}

module "routetable-tdaaccounts" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-tdaaccounts-fdx.subnet_id
}

module "routetable-cif" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.fdx-routetable.id
  subnet_id      = module.subnet-func-cif-fdx.subnet_id
}