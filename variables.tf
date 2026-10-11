variable "organization_custom_properties" {
  description = <<EOT
Map of organization_custom_properties, attributes below
Required:
    - property_name
Optional:
    - allowed_values
    - default_value
    - description
    - required
    - value_type
    - values_editable_by
EOT

  type = map(object({
    property_name      = string
    allowed_values     = optional(list(string))
    default_value      = optional(string)
    description        = optional(string)
    required           = optional(bool)
    value_type         = optional(string)
    values_editable_by = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.organization_custom_properties : (
        v.values_editable_by == null || (contains(["org_actors", "org_and_repo_actors"], v.values_editable_by))
      )
    ])
    error_message = "must be one of: org_actors, org_and_repo_actors"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

