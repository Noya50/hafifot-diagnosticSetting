variable "name" {
  description = "(Optional) The nameof the diagnostic settings."
  type        = string
  default     = "diagnostic-setting-tf"
}

variable "target_resource_id" {
  description = "(Required) The resource to which the diagnostic settings resource is connected"
  type = string
}

variable "eventhub_name" {
  description = "(Optional) Specifies the name of the Event Hub where Diagnostics Data should be sent."
  type        = string
  default     = null
}

variable "eventhub_authorization_rule_id" {
  description = "(Optional) Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. Must be specified if log_analytics_workspace_id or storage_account_id is not specified"
  type        = string
  default     = null
}

variable "log_analytics_workspace_id" {
  description = "(Optional) Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. Must be specified if storage_account_id or eventhub_authorization_rule_id is not specified"
  type        = string
  default     = null
}

variable "storage_account_id" {
  description = "(Optional) The ID of the Storage Account where logs should be sent. Must be specified if log_analytics_workspace_id or eventhub_authorization_rule_id is not specified"
  type        = string
  default     = null
}

variable "enabled_log_block_categories" {
  description = "(Optional) The log category for the Azure Active Directory Diagnostic. default: SignInLogs, AuditLogs, NonInteractiveUserSignInLogs, ServicePrincipalSignInLogs."
  type        = list(string)
  default     = ["SignInLogs", "AuditLogs", "NonInteractiveUserSignInLogs", "ServicePrincipalSignInLogs"]
}

variable "enabled_log_block_retention_policy" {
  description = "(Optional) Defines how long the collected logs or metrics are retained before being automatically deleted."
  type        = map(string)
  default = {
    "enabled" = "true"
    "days"    = "1"
  }
}

variable "diagnostic_setting_categories" {
  description = "value"
  type = list(string)
  default = null
}
