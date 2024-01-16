
resource "azurerm_aadb2c_directory" "example" {
  count                   = length(var.tenants)
  country_code            = var.tenants[count.index].country_code
  data_residency_location = var.tenants[count.index].data_residency_location
  display_name            = var.tenants[count.index].display_name
  domain_name             = var.tenants[count.index].domain_name
  resource_group_name     = var.tenants[count.index].resource_group_name
  sku_name                = var.tenants[count.index].sku_name
}

