data "azurerm_subnet" "vm-subneteastus2" {
  name                 = "vm-subnet-internal-dcops-prod-eastus2"
  virtual_network_name = "vnet-internal-dcops-prod-eastus2"
  resource_group_name  = "internal-server-dcops-prod-eastus2"
}

data "azurerm_subnet" "vm-subnetcentralus" {
  name                 = "vm-subnet-internal-dcops-prod-centralus"
  virtual_network_name = "vnet-internal-dcops-prod-centralus"
  resource_group_name  = "internal-server-dcops-prod-centralus"
}

# data.azurerm_subnet.snet-private-endpoints-eastus2
data "azurerm_subnet" "snet-private-endpoints-eastus2" {
  name                 = "snet-private-endpoints-eastus2"
  virtual_network_name = "vnet-internal-dcops-prod-eastus2"
  resource_group_name  = "internal-server-dcops-prod-eastus2"
}


# data.azurerm_subnet.snet-private-endpoints-centralus
data "azurerm_subnet" "snet-private-endpoints-centralus" {
  name                 = "snet-private-endpoints-centralus"
  virtual_network_name = "vnet-internal-dcops-prod-centralus"
  resource_group_name  = "internal-server-dcops-prod-centralus"
}
