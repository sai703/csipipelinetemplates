data "azurerm_windows_function_app" "function_apps" {
  for_each = toset(var.function_apps)

  name                = "func-loyaltyrewards-${each.key}-${var.env}-${var.location}"
  resource_group_name = var.resource_group_name
}