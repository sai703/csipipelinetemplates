module "snet-func-specscloudcore-ebg" {
  source               = "app.terraform.io/csiseg/subnets/csi"
  version              = "2.0.6"
  name                 = "snet-func-specscloudcore-ebg-${var.env}-${var.location}"
  resource_group_name  = var.virtual_network_resource_group
  location             = module.rg-specscloudcore-ebg.location
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.func_subnet_address_prefixes
  tags                 = var.tags
  service_endpoints    = ["Microsoft.Storage"]
  delegation = [
    {
      delegation_name         = "function-apps"
      service_delegation_name = "Microsoft.Web/serverFarms"
      actions                 = ["Microsoft.Network/virtualNetworks/subnets/action"]
    }
  ]
  firewall_ip = var.firewall_ip
}