module "routetable-specscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-specscloudcore-ddacloudcore.subnet_id
}

module "routetable-translatescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-translatescloudcore-ddacloudcore.subnet_id
}

module "routetable-ddatransactionscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-ddatransactionscloudcore-ddacloudcore.subnet_id
}

module "routetable-ddaaccountscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-ddaaccountscloudcore-ddacloudcore.subnet_id
}

module "routetable-runningbalance" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-runningbalance-ddacloudcore.subnet_id
}

module "routetable-imagescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-imagescloudcore-ddacloudcore.subnet_id
}

module "routetable-transactionchangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-transactionchangescloudcore-ddacloudcore.subnet_id
}

module "routetable-accountchangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-accountchangescloudcore-ddacloudcore.subnet_id
}

module "routetable-rtscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-rtscloudcore-ddacloudcore.subnet_id
}

module "routetable-specschangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-specschangescloudcore-ddacloudcore.subnet_id
}

module "routetable-ddamemocloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-ddamemocloudcore-ddacloudcore.subnet_id
}

module "routetable-rtsnewaccountscloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-rtsnewaccountscloudcore-ddacloudcore.subnet_id
}

module "routetable-rtsbalancescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-rtsbalancescloudcore-ddacloudcore.subnet_id
}

module "routetable-translateschangescloudcore" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.ddacloudcore-routetable.id
  subnet_id      = module.subnet-func-translateschangescloudcore-ddacloudcore.subnet_id
}
