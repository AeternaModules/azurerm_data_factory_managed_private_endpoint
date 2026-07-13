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
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_managed_private_endpoint's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryManagedPrivateEndpointName] !ok
  # path: name
  #   source:    [from validate.DataFactoryManagedPrivateEndpointName] !regexp.MustCompile(`^([[:alnum:]][-._[:alnum:]]{0,78}[_[:alnum:]])$`).MatchString(v)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: target_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
  # path: subresource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !ok
  # path: subresource_name
  #   condition: length(value) < 3
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) >= 3]
  # path: subresource_name
  #   source:    [from networkValidate.PrivateLinkSubResourceName] !m
  # path: subresource_name
  #   condition: length(value) == 0
  #   message:   [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
  #   source:    [from networkValidate.PrivateLinkSubResourceName: invalid when len(value) != 0]
  # path: fqdns[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

