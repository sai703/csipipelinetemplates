output "tenant_id" {
  value = { for idx, directory in azurerm_aadb2c_directory.example : idx => directory.tenant_id }
}