resource "azurerm_shared_image" "si-ado-linux" {
  name                = "ado-agent-linux-server"
  gallery_name        = azurerm_shared_image_gallery.sig-csi.name
  resource_group_name = module.rg-vm-images-ebze-centralus.name
  location            = module.rg-vm-images-ebze-centralus.location
  os_type             = "Linux"

  identifier {
    publisher = "CSI"
    offer     = "ADOAgents"
    sku       = "Linux"
  }

  tags = local.centralus_tags
}

# resource "azurerm_shared_image" "si-ado-windows-eastus2" {
#   name                = "ado-agent-windows-server"
#   gallery_name        = azurerm_shared_image_gallery.sig-shared-eastus2.name
#   resource_group_name = azurerm_resource_group.rg-netops-network-eastus2.name
#   location            = azurerm_resource_group.rg-netops-network-eastus2.location
#   os_type             = "Windows"

#   identifier {
#     publisher = "CSI"
#     offer     = "ADOAgents"
#     sku       = "Windows"
#   }

#   tags = local.eastus2_tags
# }