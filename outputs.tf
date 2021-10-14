## networking related
#
output "windows_app_startup_script" {
  value       = var.app ? data.template_file.app_startup_script.rendered : ""
  description = "startup script when instance boots"
}

output "database_startup_script" {
  value       = var.database ? data.template_file.database_startup_script.rendered : ""
  description = "startup script when instance boots"
}

output "web_startup_script" {
  value       = var.web ? data.template_file.web_startup_script.rendered : ""
  description = "startup script when instance boots"
}

## windows vm related
#
output "windowsvm-web-public_ip_address" {
  value       = azurerm_windows_virtual_machine.web[*].public_ip_address
  description = "Azure windows VM: Azure windows VM Web Server public IP address"
}

output "windowsvm-web-private_ip_address" {
  value       = azurerm_windows_virtual_machine.web[*].private_ip_address
  description = "Azure windows VM: Azure windows VM Web Server private IP address"
}

# output "windowsvm-app-public_ip_address" {
#   value       = azurerm_windows_virtual_machine.app.public_ip_address
#   description = "Azure windows VM: Azure windows VM App Server public IP address"
# }

# output "windowsvm-db-public_ip_address" {
#   value       = azurerm_windows_virtual_machine.db.public_ip_address
#   description = "Azure windows VM: Azure windows VM DB Server public IP address"
# }
