output "id" {
  value       = azurerm_logic_app_standard.logic_app_standard.id
  description = "The ID of the Logic App Standard Instance"
}

output "name" {
  value       = azurerm_logic_app_standard.logic_app_standard.name
  description = "The name of the Logic App Standard Instance"
}

output "rbac_id" {
  value       = try(azurerm_logic_app_standard.logic_app_standard.identity.0.principal_id, null)
  description = "The Principal ID of the App Service."
}

output "vnet_integration_value" {
  value = var.settings.vnet_intergration
}

output "vnet_integration" {
  value       = azurerm_logic_app_standard.logic_app_standard.virtual_network_subnet_id
  description = "The Subet ID to attach the logic app"
}