variable "data_factory_managed_private_endpoints" {
  description = <<EOT
Map of data_factory_managed_private_endpoints, attributes below
Required:
    - data_factory_id
    - name
    - target_resource_id
Optional:
    - fqdns
    - subresource_name
EOT

  type = map(object({
    data_factory_id    = string
    name               = string
    target_resource_id = string
    fqdns              = optional(list(string))
    subresource_name   = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_managed_private_endpoints : (
        v.subresource_name == null || (length(v.subresource_name) == 0)
      )
    ])
    error_message = "[from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_managed_private_endpoints : (
        v.fqdns == null || (alltrue([for x in v.fqdns : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

