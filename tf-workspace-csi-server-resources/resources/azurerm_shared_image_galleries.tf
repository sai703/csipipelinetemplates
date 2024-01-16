resource "azurerm_shared_image_gallery" "sig-csi" {
  name                = "sig_csi"
  resource_group_name = module.rg-vm-images-ebze-centralus.name
  location            = module.rg-vm-images-ebze-centralus.location
  description         = "CSI Shared Compute Images"

  tags = local.centralus_tags
}