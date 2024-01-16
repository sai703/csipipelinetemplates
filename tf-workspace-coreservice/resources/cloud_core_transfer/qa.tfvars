env = "qa"

regions = {
  centralus = {
    private_endpoint_subnet_id = "/subscriptions/bbe945f2-4b1d-489a-b478-5422e63fafb9/resourceGroups/rg-coreservices-ebg-nonprod-centralus/providers/Microsoft.Network/virtualNetworks/vnet-coreservices-ebg-nonprod-centralus/subnets/subnet-coreserivces-pvtendpoint-ebg-centralus"
    evhns_dns_zone_ids         = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/RGNetOpsNetworkNonProdCentralUS/providers/Microsoft.Network/privateDnsZones/azurewebsites.net"]
    monitoring_eventhub_name                  = "evh-core-services-np-centralus"
    monitoring_eventhub_authorization_rule_id = "/subscriptions/7477239c-4fc1-48ea-8d94-5206aeaa1ed4/resourceGroups/rg-csi-evh-np-centralus/providers/Microsoft.EventHub/namespaces/evhns-csi-np-centralus/authorizationRules/evhns-authrule-csi-np-centralus"
  }

  # eastus2 = {
  # }
}