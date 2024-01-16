# Environment
env       = "qa"
loc       = "centralus"
short_loc = "cus"

# Mandatory Tags
// csi_project        = "Core Services"
// csi_service        = "Core Services"
// csi_dept           = "EBG"
// csi_environment    = "qa"
// csi_transformation = "True"
#Eventhub variables
sku_name = "Standard"
id_type  = "UserAssigned"
is_public_network_access_enabled = "false"

#PE
eventhubns_private_connection_name = "Azureeventhubns"
eventhubns_subresource_names       = ["namespace"]
is_manual_connection               = "false"
eventhubns_dns_name                = "privatelink.servicebus.windows.net"
subnet_id_PE                       = ["10.225.118.128/26"]

vnet_rg   = "rg-coreservices-ebg-nonprod-centralus"
vnet_name = "vnet-coreservices-ebg-nonprod-centralus"