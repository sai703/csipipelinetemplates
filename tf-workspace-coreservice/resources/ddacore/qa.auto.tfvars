env = "qa"
loc = "centralus"


#Eventhub variables
sku_name     = "Standard"
identitytype = "SystemAssigned"

#appconfig variables
appconfig_sku           = "standard"
appconfig_identity_type = "UserAssigned"

#keyvault variables
kv_sku_name                        = "standard"
kv_soft_delete_retention_days      = "90"
kv_purge_protection_enabled        = "false"
kv_enabled_for_deployment          = "true"
kv_enabled_for_disk_encryption     = "true"
kv_enabled_for_template_deployment = "true"
kv_enable_rbac_authorization       = "true"

#privatendpoint
subnet_id_pe = ["10.225.114.80/28"]
is_manual_connection = "false"
keyvault_prvtcon_name = "keyvault-ddacore-prvtcon-name"
keyvaultresource_name = [ "vault" ]
keyvaultdns_name = "privatelink_vault_azure_com"
keyvaultdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net"]
appconfig_prvtcon_name = "appconfig-ddacore-prvtcon-name"
appconfigresource_name = [ "configurationStores" ]
appconfigdns_name =  "privatelink.azconfig.io"
appconfigdns_zone_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.azconfig.io"]
eventhubns_subresource_names =  ["namespace"]
eventhubns_private_connection_name = "evnhns-ddacore-pvtcon-name"
eventhubns_dns_name = "privatelink.servicebus.windows.net"
eventhubns_dns_id = ["/subscriptions/64bb2cbe-6c50-4482-9d50-e31e0ecd79d1/resourceGroups/rgnetopsnetworknonprodcentralus/providers/Microsoft.Network/privateDnsZones/privatelink.servicebus.windows.net"]
