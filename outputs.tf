output "data_factory_managed_private_endpoints_id" {
  description = "Map of id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.id }
}
output "data_factory_managed_private_endpoints_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.data_factory_id }
}
output "data_factory_managed_private_endpoints_fqdns" {
  description = "Map of fqdns values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.fqdns }
}
output "data_factory_managed_private_endpoints_name" {
  description = "Map of name values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.name }
}
output "data_factory_managed_private_endpoints_subresource_name" {
  description = "Map of subresource_name values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.subresource_name }
}
output "data_factory_managed_private_endpoints_target_resource_id" {
  description = "Map of target_resource_id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.target_resource_id }
}

