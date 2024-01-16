resource "azurerm_shared_image_version" "siv-ado-linux" {
  name                = "1.0.0"
  gallery_name        = azurerm_shared_image.si-ado-linux.gallery_name
  image_name          = azurerm_shared_image.si-ado-linux.name
  resource_group_name = module.rg-vm-images-ebze-centralus.name
  location            = module.rg-vm-images-ebze-centralus.location
  managed_image_id    = azurerm_image.image-ado-linux-centralus.id

  target_region {
    name                   = "EastUS2"
    regional_replica_count = 2
    storage_account_type   = "Standard_LRS"
  }

  target_region {
    name                   = "CentralUS"
    regional_replica_count = 2
    storage_account_type   = "Standard_LRS"
  }

  tags = local.centralus_tags
}

# resource "azurerm_shared_image_version" "siv-ado-windows-eastus2" {
#   name                = "1.0.0"
#   gallery_name        = azurerm_shared_image.si-ado-windows-eastus2.gallery_name
#   image_name          = azurerm_shared_image.si-ado-windows-eastus2.name
#   resource_group_name = module.ebze-vm-resourcegroup-eastus2.name
#   location            = module.ebze-vm-resourcegroup-eastus2.location
#   managed_image_id    = data.azurerm_image.mi-ado-windows-eastus2.id

#   target_region {
#     name                   = azurerm_shared_image.si-ado-windows-eastus2.location
#     regional_replica_count = 5
#     storage_account_type   = "Standard_LRS"
#   }

#   tags = local.eastus2_tags
# }