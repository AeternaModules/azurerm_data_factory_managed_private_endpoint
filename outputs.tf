output "data_factory_managed_private_endpoints" {
  description = "All data_factory_managed_private_endpoint resources"
  value       = azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints
}
output "data_factory_managed_private_endpoints_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_managed_private_endpoints"
  value       = [for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : v.data_factory_id]
}
output "data_factory_managed_private_endpoints_fqdns" {
  description = "List of fqdns values across all data_factory_managed_private_endpoints"
  value       = [for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : v.fqdns]
}
output "data_factory_managed_private_endpoints_name" {
  description = "List of name values across all data_factory_managed_private_endpoints"
  value       = [for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : v.name]
}
output "data_factory_managed_private_endpoints_subresource_name" {
  description = "List of subresource_name values across all data_factory_managed_private_endpoints"
  value       = [for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : v.subresource_name]
}
output "data_factory_managed_private_endpoints_target_resource_id" {
  description = "List of target_resource_id values across all data_factory_managed_private_endpoints"
  value       = [for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : v.target_resource_id]
}

