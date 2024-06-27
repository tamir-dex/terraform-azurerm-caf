output "name" {
  value = azurerm_search_service.search_service.name
}

output "location" {
  value = azurerm_search_service.search_service.location
}

output "tags" {
  value = azurerm_search_service.search_service.tags

}

output "id" {
  value = azurerm_search_service.search_service.id
}

output "rbac_id" {
  description = "The Principal ID of the Search Services for Role Mapping"
  value       = try(azurerm_search_service.search_service.identity[0].principal_id, null)
}

output "identity" {
  value = try(azurerm_search_service.search_service.identity, null)
}