output "data_factory_managed_private_endpoints_id" {
  description = "Map of id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_managed_private_endpoints_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_managed_private_endpoints_fqdns" {
  description = "Map of fqdns values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.fqdns if v.fqdns != null && length(v.fqdns) > 0 }
}
output "data_factory_managed_private_endpoints_name" {
  description = "Map of name values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_managed_private_endpoints_subresource_name" {
  description = "Map of subresource_name values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.subresource_name if v.subresource_name != null && length(v.subresource_name) > 0 }
}
output "data_factory_managed_private_endpoints_target_resource_id" {
  description = "Map of target_resource_id values across all data_factory_managed_private_endpoints, keyed the same as var.data_factory_managed_private_endpoints"
  value       = { for k, v in azurerm_data_factory_managed_private_endpoint.data_factory_managed_private_endpoints : k => v.target_resource_id if v.target_resource_id != null && length(v.target_resource_id) > 0 }
}

