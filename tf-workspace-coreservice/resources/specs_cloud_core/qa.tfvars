env = "qa"

regions = {
  centralus = {
    private_endpoint_subnet_id     = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-coreservices-ebg-nonprod-centralus/providers/Microsoft.Network/virtualNetworks/vnet-coreservices-ebg-nonprod-centralus/subnets/subnet-coreserivces-pvtendpoint-ebg-centralus"
    storage_account_dns_zone_ids   = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
    function_app_dns_zone_ids      = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
    virtual_network_name           = "vnet-coreservices-ebg-nonprod-centralus"
    virtual_network_resource_group = "rg-coreservices-ebg-nonprod-centralus"
    func_subnet_address_prefixes   = ["10.225.127.16/29"]
    firewall_ip                    = "10.225.0.4"
  }
}