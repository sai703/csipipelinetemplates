variable "env" {
  type        = string
  description = "Environment abbreviation of where the infra is deploying to"
}

variable "regions" {
  type = map(object({
    private_endpoint_subnet_id = string
    evhns_dns_zone_ids         = list(string)
    monitoring_eventhub_name                  = string
    monitoring_eventhub_authorization_rule_id = string
  }))
  default     = {}
  description = "A map of objects where the key is the region and the value is object containing regions specifics"
}