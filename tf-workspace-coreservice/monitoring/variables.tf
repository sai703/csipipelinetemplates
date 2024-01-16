variable "env" {
  type = string
}

variable "location" {
  type = string
}

variable "action_groups" {
  type = map(object({
    description         = optional(string)
    short_name          = optional(string)
    resource_group_name = optional(string)
    email_receiver = list(object({
      name                    = optional(string)
      email_address           = optional(string)
      use_common_alert_schema = optional(bool)
    }))
    webhook_receiver = list(object({
      name                    = optional(string)
      service_uri             = optional(string)
      use_common_alert_schema = optional(bool)
    }))
  }))
}

variable "alerts" {
  description = "A map of standard alert rules"
  type = map(object({
    action_group_name = optional(string)
    criteria = list(object({
      metric_namespace       = optional(string)
      metric_name            = optional(string)
      aggregation            = optional(string)
      operator               = optional(string)
      threshold              = optional(string)
      skip_metric_validation = optional(bool)
      dimension = optional(list(object({
        name     = optional(string)
        operator = optional(string)
        values   = optional(list(string))
      })))
    }))
  }))
  default = {}
}

variable "scheduled_query_rule_alerts" {
  type = map(object({
    description                      = optional(string)
    enabled                          = optional(bool)
    action_group_name                = optional(string)
    display_name                     = optional(string)
    evaluation_frequency             = optional(string)
    window_duration                  = optional(string)
    severity                         = optional(number)
    mute_action_after_alert_duration = optional(string)
    scopes                           = optional(list(string))
    skip_query_validation            = optional(bool)
    workspace_alerts_storage_enabled = optional(bool)
    auto_mitigation_enabled          = optional(bool)
    query_time_range_override        = optional(string)
    criteria = list(object({
      time_aggregation_method = optional(string)
      query                   = optional(string)
      operator                = optional(string)
      threshold               = optional(string)
      metric_measure_column   = optional(string)
      dimension = optional(list(object({
        name     = optional(string)
        operator = optional(string)
        values   = optional(list(string))
      })))
    }))
  }))
  default = {}
}