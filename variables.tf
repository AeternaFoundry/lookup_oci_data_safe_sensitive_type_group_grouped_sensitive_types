variable "data_safe_sensitive_type_group_grouped_sensitive_types_lookup" {
  description = <<EOT
Map of data_safe_sensitive_type_group_grouped_sensitive_types_lookup, attributes below
Required:
    - sensitive_type_group_id
Optional:
    - sensitive_type_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    sensitive_type_group_id = string
    sensitive_type_id       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_safe_sensitive_type_group_grouped_sensitive_types_lookup : (
        alltrue([for item in v.grouped_sensitive_type_collection : (item.items == null || alltrue([for item in item.items : (item.patch_operations == null || alltrue([for item in item.patch_operations : (item.operation == null || (contains([for v in ["INSERT", "MERGE", "REMOVE"] : lower(v)], lower(item.operation))))]))]))])
      )
    ])
    error_message = "must be one of: \"INSERT\", \"MERGE\", \"REMOVE\""
  }
}

