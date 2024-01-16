# azurerm_image.image-ado-linux-centralus
resource "azurerm_image" "image-ado-linux-centralus" {
  name                = "ado-agent-linux"
  location            = module.rg-vm-images-ebze-centralus.location
  resource_group_name = module.rg-vm-images-ebze-centralus.name
  tags                = local.centralus_tags

  os_disk {
    os_type  = "Linux"
    os_state = "Generalized"
    blob_uri = "https://stgadoimagescus.blob.core.windows.net/images/ubuntu_2004.vhd"
    size_gb  = 120
  }
}