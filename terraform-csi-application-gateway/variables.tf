variable "subnet_id" {
  type        = string
  description = "(Optional) The ID of the Subnet"
}

variable "pip-gateway" {
  type         = string
  description  = "(Required)Name of the public IP"
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created"
}

variable "location" {
  type          = string
  description   = "(Required) The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created"
}

variable "allocation_method" {
  type        = string
  description = "(Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic"
}

variable "sku" {
  type         = string
  description  = "sku - (Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic"
  default      = null
}

variable "name" {
  type = string
  description = "(Required) The name of the Application Gateway. Changing this forces a new resource to be created"
}

variable "sku_name" {
  type = string
  description = "(Required) The Name of the SKU to use for this Application Gateway. Possible values are Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Medium, WAF_Large, and WAF_v2"
}

variable "tier" {
  type = string
  description = "(Required) The Tier of the SKU to use for this Application Gateway. Possible values are Standard, Standard_v2, WAF and WAF_v2"
}

variable "tags" {
  type = map(string)
  description = "Tags for application gateway"
}

variable "capacity" {
  type = string
  description = "(Required) The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between 1 and 32, and 1 to 125 for a V2 SKU. This property is optional if autoscale_configuration is set"
  default  = null
}

variable "min_capacity" {
  type = number
  description = "(Required) Minimum capacity for autoscaling. Accepted values are in the range 0 to 100"
  default  = null
}

variable "max_capacity" {
  type = number
  description = "(Required) Minimum capacity for autoscaling. Accepted values are in the range 0 to 100"
  default  = null
}

variable "identity_ids" {
  type        = list(string)
  description = "(Required) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Application Gateway"
  default     = null
}

variable "cert_name" {
  type         = string
  description  = "(optional) The Name of the SSL certificate that is unique within this Application Gateway"
  default      = ""
}

variable "key_vault_secret_id" {
  type         = string
  description  = "Optional) Secret Id of (base-64 encoded unencrypted pfx) Secret or Certificate object stored in Azure KeyVault. You need to enable soft delete for keyvault to use this feature. Required if data is not set"
  default      = null
}

variable "gateway_name" {
  type        = string
  description = "(Required) The Name of this Gateway IP Configuration"
}

variable "frontend_port_name" {
  type        = string
  description = "(Required) The port used for this Frontend Port"

}

variable "port" {
  type        = string
  description = "Required) The port which should be used for this Backend HTTP Settings Collection"
}

variable "frontend_ip_configuration_name" {
  type        = string
  description = "(Required) The name of the Frontend IP Configuration."
}

variable "apg_backend_pool" {
  type        = list(object({
    backend_address_pool_name = string
    fqdns                     = optional(list(string))
    ip_addresses              = optional(list(string))
  }))
}

variable "apg_backendhttp_settings" {
  type        = list(object({
    http_setting_name       = string
    cookie_based_affinity   = string
    http_port               = number
    http_protocol           = string
    request_timeout         = number
    probe_name              = string
    host_name               = optional(string)
  }))
}

variable "apg_probe" {
  type        = list(object({
    host                    = string
    interval                = number
    name                    = string
    protocol                = string
    path                    = string
    timeout                 = number
    unhealthy_threshold     = number
    port                    = number
    minimum_servers         = number
    host_name               = optional(string)
  }))
}

variable "apg_http_listener" {
  type        = list(object({
    listener_name                     = string
    frontend_ip_configuration_name    = string
    frontend_port_name                = string
    listener_protocol                 = string  
    ssl_certificate_name              = optional(string)
    host_name                         = optional(string)
    require_sni                       = optional(bool)
    ssl_profile_name                   = optional(string)
  }))
}

variable "apg_ssl_profile" {
  type        = list(object({
    ssl_profile_name            = string
    ssl_policy                  = list(object({
      policy_type               = string
      policy_name               = string
      min_protocol_version  = string
  }))
  }))
}

variable "apg_request_routing_rule" {
  type        = list(object({
    request_routing_rule_name   = string
    rule_type                   = string
    listener_name               = string
    backend_address_pool_name   = string
    http_setting_name           = string 
    priority                    = number             
  }))
}

