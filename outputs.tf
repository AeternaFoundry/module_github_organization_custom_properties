output "organization_custom_properties_id" {
  description = "Map of id values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_custom_properties_allowed_values" {
  description = "Map of allowed_values values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.allowed_values if v.allowed_values != null && length(v.allowed_values) > 0 }
}
output "organization_custom_properties_default_value" {
  description = "Map of default_value values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.default_value if v.default_value != null && length(v.default_value) > 0 }
}
output "organization_custom_properties_description" {
  description = "Map of description values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.description if v.description != null && length(v.description) > 0 }
}
output "organization_custom_properties_property_name" {
  description = "Map of property_name values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.property_name if v.property_name != null && length(v.property_name) > 0 }
}
output "organization_custom_properties_required" {
  description = "Map of required values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.required if v.required != null }
}
output "organization_custom_properties_value_type" {
  description = "Map of value_type values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.value_type if v.value_type != null && length(v.value_type) > 0 }
}
output "organization_custom_properties_values_editable_by" {
  description = "Map of values_editable_by values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.values_editable_by if v.values_editable_by != null && length(v.values_editable_by) > 0 }
}

