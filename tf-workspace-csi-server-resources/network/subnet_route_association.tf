module "vm-subnet-eastus2-route-association" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.internal-server-routetable-eastus2.id
  subnet_id      = module.vm-subnet-eastus2.subnet_id
}

module "vm-subnet-centralus-route-association" {
  source         = "app.terraform.io/csiseg/route-association/csi"
  version        = "1.0.0"
  route_table_id = module.internal-server-routetable-centralus.id
  subnet_id      = module.vm-subnet-centralus.subnet_id
}
