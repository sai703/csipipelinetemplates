variable "tenants" {
  type = list(object({
    country_code            = string
    data_residency_location = string
    display_name            = string
    domain_name             = string
    resource_group_name     = string
    sku_name                = string
  }))
}
variable "azurestorageaccount" {
  description = "Azure storage account name"
  type        = string
}