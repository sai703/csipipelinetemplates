module "routetable-account" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-account.subnet_id

}

module "routetable-drawing" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-drawing.subnet_id

}

module "routetable-transactionruns" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-transactionruns.subnet_id

}

module "routetable-transaction" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-transaction.subnet_id

}

module "routetable-transactionsubscr" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-transactionsubscr.subnet_id

}

module "routetable-winner" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-winner.subnet_id

}

module "routetable-changefeedbyacc" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-changefeedbyacc.subnet_id

}

module "routetable-changefeedbydate" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.loyalty-routetable.id
  subnet_id      = module.subnet-func-changefeedbydate.subnet_id

}