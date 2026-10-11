output "data_safe_sensitive_type_group_grouped_sensitive_types_lookup_id" {
  description = "Map of id values across all data_safe_sensitive_type_group_grouped_sensitive_types_lookup, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_data_safe_sensitive_type_group_grouped_sensitive_types.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_lookup_filter" {
  description = "Map of filter values across all data_safe_sensitive_type_group_grouped_sensitive_types_lookup, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_data_safe_sensitive_type_group_grouped_sensitive_types.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_lookup_grouped_sensitive_type_collection" {
  description = "Map of grouped_sensitive_type_collection values across all data_safe_sensitive_type_group_grouped_sensitive_types_lookup, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup except keys with no grouped_sensitive_type_collection are omitted"
  value       = { for k, v in data.oci_data_safe_sensitive_type_group_grouped_sensitive_types.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : k => v.grouped_sensitive_type_collection if v.grouped_sensitive_type_collection != null && length(v.grouped_sensitive_type_collection) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_lookup_sensitive_type_group_id" {
  description = "Map of sensitive_type_group_id values across all data_safe_sensitive_type_group_grouped_sensitive_types_lookup, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup except keys with no sensitive_type_group_id are omitted"
  value       = { for k, v in data.oci_data_safe_sensitive_type_group_grouped_sensitive_types.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : k => v.sensitive_type_group_id if v.sensitive_type_group_id != null && length(v.sensitive_type_group_id) > 0 }
}
output "data_safe_sensitive_type_group_grouped_sensitive_types_lookup_sensitive_type_id" {
  description = "Map of sensitive_type_id values across all data_safe_sensitive_type_group_grouped_sensitive_types_lookup, keyed the same as var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup except keys with no sensitive_type_id are omitted"
  value       = { for k, v in data.oci_data_safe_sensitive_type_group_grouped_sensitive_types.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : k => v.sensitive_type_id if v.sensitive_type_id != null && length(v.sensitive_type_id) > 0 }
}

