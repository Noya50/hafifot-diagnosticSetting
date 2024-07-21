output "id" {
  value       = azurerm_monitor_diagnostic_setting.this.id
  description = "The id of the diagnostic setting."
}

output "name" {
  value       = azurerm_monitor_diagnostic_setting.this.name
  description = "The name of the diagnostic setting."
}
