data "oci_data_safe_sensitive_type_group_grouped_sensitive_types" "data_safe_sensitive_type_group_grouped_sensitive_types_lookup" {
  for_each = var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup

  sensitive_type_group_id = each.value.sensitive_type_group_id
  sensitive_type_id       = each.value.sensitive_type_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

