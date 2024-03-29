## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_gateway.app-gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_gateway) | resource |
| [azurerm_public_ip.pip-gateway](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | n/a | `string` | n/a | yes |
| <a name="input_backend_address_pool_fqdns"></a> [backend\_address\_pool\_fqdns](#input\_backend\_address\_pool\_fqdns) | n/a | `list(string)` | n/a | yes |
| <a name="input_backend_address_pool_name"></a> [backend\_address\_pool\_name](#input\_backend\_address\_pool\_name) | n/a | `string` | n/a | yes |
| <a name="input_capacity"></a> [capacity](#input\_capacity) | n/a | `string` | n/a | yes |
| <a name="input_cookie_based_affinity"></a> [cookie\_based\_affinity](#input\_cookie\_based\_affinity) | n/a | `string` | n/a | yes |
| <a name="input_frontend_ip_configuration_name"></a> [frontend\_ip\_configuration\_name](#input\_frontend\_ip\_configuration\_name) | n/a | `string` | n/a | yes |
| <a name="input_frontend_port_name"></a> [frontend\_port\_name](#input\_frontend\_port\_name) | n/a | `string` | n/a | yes |
| <a name="input_gateway_name"></a> [gateway\_name](#input\_gateway\_name) | n/a | `string` | n/a | yes |
| <a name="input_http_port"></a> [http\_port](#input\_http\_port) | n/a | `string` | n/a | yes |
| <a name="input_http_protocol"></a> [http\_protocol](#input\_http\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_http_setting_name"></a> [http\_setting\_name](#input\_http\_setting\_name) | n/a | `string` | n/a | yes |
| <a name="input_listener_name"></a> [listener\_name](#input\_listener\_name) | n/a | `string` | n/a | yes |
| <a name="input_listener_protocol"></a> [listener\_protocol](#input\_listener\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | n/a | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | n/a | `string` | n/a | yes |
| <a name="input_probe_host"></a> [probe\_host](#input\_probe\_host) | n/a | `string` | n/a | yes |
| <a name="input_probe_interval"></a> [probe\_interval](#input\_probe\_interval) | n/a | `string` | n/a | yes |
| <a name="input_probe_name"></a> [probe\_name](#input\_probe\_name) | n/a | `string` | n/a | yes |
| <a name="input_probe_path"></a> [probe\_path](#input\_probe\_path) | n/a | `string` | n/a | yes |
| <a name="input_probe_protocol"></a> [probe\_protocol](#input\_probe\_protocol) | n/a | `string` | n/a | yes |
| <a name="input_probe_timeout"></a> [probe\_timeout](#input\_probe\_timeout) | n/a | `string` | n/a | yes |
| <a name="input_probe_unhealthy_threshold"></a> [probe\_unhealthy\_threshold](#input\_probe\_unhealthy\_threshold) | n/a | `string` | n/a | yes |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | n/a | `string` | n/a | yes |
| <a name="input_request_routing_rule_name"></a> [request\_routing\_rule\_name](#input\_request\_routing\_rule\_name) | n/a | `string` | n/a | yes |
| <a name="input_request_timeout"></a> [request\_timeout](#input\_request\_timeout) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | n/a | yes |
| <a name="input_rule_type"></a> [rule\_type](#input\_rule\_type) | n/a | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | n/a | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | n/a | yes |
| <a name="input_tier"></a> [tier](#input\_tier) | n/a | `string` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | n/a |
