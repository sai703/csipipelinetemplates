env      = "prod"
location = "centralus"

action_groups = {
  app_management = {
    short_name = "app-mgmt"
    email_receiver = [
      {
        name                    = "test-email"
        email_address           = "a40756e5.csiweb.com@amer.teams.ms"
        use_common_alert_schema = true
      }
    ]
    webhook_receiver = [
      {
        name                    = "App Mgmt"
        service_uri             = "https://events.pagerduty.com/integration/65132765fb1c4208d073996e93342714/enqueue"
        use_common_alert_schema = true
      }
    ]
  }
}

scheduled_query_rule_alerts = {
  loyalty_rewards_account = {
    severity          = 1
    window_duration   = "PT5M"
    action_group_name = "app_management"
    criteria = [
      {
        time_aggregation_method = "Minimum"
        operator                = "LessThan"
        threshold               = "100"
        query                   = <<-EOT
          AzureMetrics
          | where MetricName == "HealthCheckStatus"
          | where TimeGenerated > ago(30m)
          | summarize LatestValue = max(Minimum) by Resource, MetricName
          | summarize AggragatedValue = avg(LatestValue)
        EOT
      }
    ]
  }
}