output "id" {
  value = azurerm_application_gateway.app-gateway.id
}

output "name" {
  value = var.name
}

output "public_ip_address" {
  value = azurerm_public_ip.pip-gateway.ip_address
}

output "backend_address_pool_id" {
  value = azurerm_application_gateway.app-gateway.backend_address_pool.*.id
}

output "backend_address_pools" {
  value = azurerm_application_gateway.app-gateway.backend_address_pool
}
