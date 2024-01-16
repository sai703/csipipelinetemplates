variable "env" {
  type        = string
  description = "Environment abbreviation of where the infra is deploying to"
}

variable "regions" {
  type = map(object({
    private_endpoint_subnet_id                = string
    virtual_network_name                      = string
    virtual_network_resource_group            = string
    func_subnet_address_prefixes              = list(string)
    firewall_ip                               = string
    storage_account_dns_zone_ids              = list(string)
    function_app_dns_zone_ids                 = list(string)
    monitoring_eventhub_name                  = string
    monitoring_eventhub_authorization_rule_id = string
  }))
  default     = {}
  description = "A map of objects where the key is the region and the value is object containing regions specifics"
}