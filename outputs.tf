output "organization_custom_properties_id" {
  description = "Map of id values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.id }
}
output "organization_custom_properties_allowed_values" {
  description = "Map of allowed_values values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.allowed_values }
}
output "organization_custom_properties_default_value" {
  description = "Map of default_value values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.default_value }
}
output "organization_custom_properties_description" {
  description = "Map of description values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.description }
}
output "organization_custom_properties_property_name" {
  description = "Map of property_name values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.property_name }
}
output "organization_custom_properties_required" {
  description = "Map of required values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.required }
}
output "organization_custom_properties_value_type" {
  description = "Map of value_type values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.value_type }
}
output "organization_custom_properties_values_editable_by" {
  description = "Map of values_editable_by values across all organization_custom_properties, keyed the same as var.organization_custom_properties"
  value       = { for k, v in github_organization_custom_properties.organization_custom_properties : k => v.values_editable_by }
}

