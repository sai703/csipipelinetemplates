resource "azurerm_public_ip" "pip-gateway" {
  name                            = var.pip-gateway
  resource_group_name             = var.resource_group_name
  location                        = var.location
  allocation_method               = var.allocation_method
  sku                             = var.sku
  tags                            = var.tags
}


resource "azurerm_application_gateway" "app-gateway" {
  name                             = var.name
  resource_group_name              = var.resource_group_name
  location                         = var.location
  tags                             = var.tags
  
  sku {
    name                           = var.sku_name
    tier                           = var.tier
    capacity                       = var.capacity
  }

  autoscale_configuration {
    min_capacity = var.min_capacity
    max_capacity = var.max_capacity
  }

  identity {
    type         = "UserAssigned"
    identity_ids =  var.identity_ids
  }

  gateway_ip_configuration {
    name                           = var.gateway_name
    subnet_id                      = var.subnet_id
  }

  frontend_port {
    name                           = var.frontend_port_name
    port                           = var.port
  }

  frontend_ip_configuration {
    name                           = var.frontend_ip_configuration_name
    public_ip_address_id           = azurerm_public_ip.pip-gateway.id
  }

  ssl_certificate {
    name                           = var.cert_name
    key_vault_secret_id            = var.key_vault_secret_id
  }

  dynamic "backend_address_pool" {
    for_each  = var.apg_backend_pool
    content    {

      name                       = backend_address_pool.value["backend_address_pool_name"]
      fqdns                      = backend_address_pool.value["fqdns"]
      ip_addresses               = backend_address_pool.value["ip_addresses"]
    }
  }

  dynamic "probe" {
    for_each  = var.apg_probe
    content    {

      host                       = probe.value["host"]
      interval                   = probe.value["interval"]
      name                       = probe.value["name"]
      protocol                   = probe.value["protocol"]
      path                       = probe.value["path"]
      timeout                    = probe.value["timeout"]
      unhealthy_threshold        = probe.value["unhealthy_threshold"]
      port                       = probe.value["port"]
      minimum_servers            = probe.value["minimum_servers"]
    }
  }
  

  dynamic "backend_http_settings" {
    for_each                       = var.apg_backendhttp_settings
    content    {

      name                   = backend_http_settings.value["http_setting_name"]
      cookie_based_affinity  = backend_http_settings.value["cookie_based_affinity"]
      port                   = backend_http_settings.value["http_port"]
      protocol               = backend_http_settings.value["http_protocol"]
      request_timeout        = backend_http_settings.value["request_timeout"]
      host_name              = backend_http_settings.value["host_name"]
      probe_name             = backend_http_settings.value["probe_name"]
    }
  }

  dynamic "http_listener" {
    for_each     = var.apg_http_listener
    content {

      name                            = http_listener.value["listener_name"]
      frontend_ip_configuration_name  = http_listener.value["frontend_ip_configuration_name"]
      frontend_port_name              = http_listener.value["frontend_port_name"]
      protocol                        = http_listener.value["listener_protocol"]
      ssl_certificate_name            = http_listener.value["ssl_certificate_name"]
      host_name                       = http_listener.value["host_name"]
      require_sni                     = http_listener.value["require_sni"]
      ssl_profile_name                 = http_listener.value["ssl_profile_name"]
    }
  }

  dynamic "ssl_profile" {
    for_each    = var.apg_ssl_profile
    content {
      name      = ssl_profile.value["ssl_profile_name"]

      dynamic "ssl_policy" {
        for_each = ssl_profile.value["ssl_policy"]
        content {
          policy_type                 = ssl_policy.value["policy_type"]
          policy_name                 = ssl_policy.value["policy_name"]
          min_protocol_version        = ssl_policy.value["min_protocol_version"]
        }
      }
      }
  }


  dynamic "request_routing_rule" {
    for_each   = var.apg_request_routing_rule
    content  {

      name                         = request_routing_rule.value["request_routing_rule_name"]
      rule_type                    = request_routing_rule.value["rule_type"]
      http_listener_name           = request_routing_rule.value["listener_name"]
      backend_address_pool_name    = request_routing_rule.value["backend_address_pool_name"]
      backend_http_settings_name   = request_routing_rule.value["http_setting_name"]
      priority                     = request_routing_rule.value["priority"]
    }
}

}