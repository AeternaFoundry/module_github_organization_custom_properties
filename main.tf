resource "github_organization_custom_properties" "organization_custom_properties" {
  for_each = var.organization_custom_properties

  property_name      = each.value.property_name
  allowed_values     = each.value.allowed_values
  default_value      = each.value.default_value
  description        = each.value.description
  required           = each.value.required
  value_type         = each.value.value_type
  values_editable_by = each.value.values_editable_by
}

