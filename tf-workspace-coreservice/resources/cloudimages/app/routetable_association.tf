module "routetable-setbyid" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-SetById.subnet_id

}

module "routetable-itembyid" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-ItemById.subnet_id

}

module "routetable-transaction" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-SetByTransactionId.subnet_id

}

module "routetable-nupointexception" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-NuPointException.subnet_id

}

module "routetable-meridianexception" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-MeridianException.subnet_id

}

module "routetable-transactionsubscriber" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-TransactionSubscriber.subnet_id

}

module "routetable-x9subscriber" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-x9.subnet_id

}

module "routetable-x9error" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.imaging-routetable.id
  subnet_id      = module.subnet-func-x9Error.subnet_id

}
