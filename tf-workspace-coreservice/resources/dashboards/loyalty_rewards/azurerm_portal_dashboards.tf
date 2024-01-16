resource "azurerm_portal_dashboard" "dashboards" {
  for_each = toset(var.function_apps)

  name                 = "dash-loyaltyrewards-${each.key}"
  resource_group_name  = var.resource_group_name
  location             = var.location
  tags                 = var.tags
  dashboard_properties = templatefile("${path.module}/templates/function_app_dashboard.json.tftpl", {
    has_health_check = contains(["account", "drawing", "winner", "transaction"], each.key)
    function_app_id  = data.azurerm_windows_function_app.function_apps[each.key].id
  })
}