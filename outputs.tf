output "external_locations_id" {
  description = "Map of id values across all external_locations, keyed the same as var.external_locations except keys with no id are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_locations_browse_only" {
  description = "Map of browse_only values across all external_locations, keyed the same as var.external_locations except keys with no browse_only are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.browse_only if v.browse_only != null }
}
output "external_locations_comment" {
  description = "Map of comment values across all external_locations, keyed the same as var.external_locations except keys with no comment are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "external_locations_created_at" {
  description = "Map of created_at values across all external_locations, keyed the same as var.external_locations except keys with no created_at are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.created_at if v.created_at != null }
}
output "external_locations_created_by" {
  description = "Map of created_by values across all external_locations, keyed the same as var.external_locations except keys with no created_by are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "external_locations_credential_id" {
  description = "Map of credential_id values across all external_locations, keyed the same as var.external_locations except keys with no credential_id are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.credential_id if v.credential_id != null && length(v.credential_id) > 0 }
}
output "external_locations_credential_name" {
  description = "Map of credential_name values across all external_locations, keyed the same as var.external_locations except keys with no credential_name are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.credential_name if v.credential_name != null && length(v.credential_name) > 0 }
}
output "external_locations_effective_enable_file_events" {
  description = "Map of effective_enable_file_events values across all external_locations, keyed the same as var.external_locations except keys with no effective_enable_file_events are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.effective_enable_file_events if v.effective_enable_file_events != null }
}
output "external_locations_effective_file_event_queue" {
  description = "Map of effective_file_event_queue values across all external_locations, keyed the same as var.external_locations except keys with no effective_file_event_queue are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => one(v.effective_file_event_queue) if v.effective_file_event_queue != null && length(v.effective_file_event_queue) > 0 }
}
output "external_locations_enable_file_events" {
  description = "Map of enable_file_events values across all external_locations, keyed the same as var.external_locations except keys with no enable_file_events are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.enable_file_events if v.enable_file_events != null }
}
output "external_locations_encryption_details" {
  description = "Map of encryption_details values across all external_locations, keyed the same as var.external_locations except keys with no encryption_details are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => one(v.encryption_details) if v.encryption_details != null && length(v.encryption_details) > 0 }
}
output "external_locations_fallback" {
  description = "Map of fallback values across all external_locations, keyed the same as var.external_locations except keys with no fallback are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.fallback if v.fallback != null }
}
output "external_locations_file_event_queue" {
  description = "Map of file_event_queue values across all external_locations, keyed the same as var.external_locations except keys with no file_event_queue are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => one(v.file_event_queue) if v.file_event_queue != null && length(v.file_event_queue) > 0 }
}
output "external_locations_force_destroy" {
  description = "Map of force_destroy values across all external_locations, keyed the same as var.external_locations except keys with no force_destroy are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.force_destroy if v.force_destroy != null }
}
output "external_locations_force_update" {
  description = "Map of force_update values across all external_locations, keyed the same as var.external_locations except keys with no force_update are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.force_update if v.force_update != null }
}
output "external_locations_isolation_mode" {
  description = "Map of isolation_mode values across all external_locations, keyed the same as var.external_locations except keys with no isolation_mode are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.isolation_mode if v.isolation_mode != null && length(v.isolation_mode) > 0 }
}
output "external_locations_metastore_id" {
  description = "Map of metastore_id values across all external_locations, keyed the same as var.external_locations except keys with no metastore_id are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.metastore_id if v.metastore_id != null && length(v.metastore_id) > 0 }
}
output "external_locations_name" {
  description = "Map of name values across all external_locations, keyed the same as var.external_locations except keys with no name are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "external_locations_owner" {
  description = "Map of owner values across all external_locations, keyed the same as var.external_locations except keys with no owner are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "external_locations_provider_config" {
  description = "Map of provider_config values across all external_locations, keyed the same as var.external_locations except keys with no provider_config are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "external_locations_read_only" {
  description = "Map of read_only values across all external_locations, keyed the same as var.external_locations except keys with no read_only are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.read_only if v.read_only != null }
}
output "external_locations_skip_validation" {
  description = "Map of skip_validation values across all external_locations, keyed the same as var.external_locations except keys with no skip_validation are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.skip_validation if v.skip_validation != null }
}
output "external_locations_updated_at" {
  description = "Map of updated_at values across all external_locations, keyed the same as var.external_locations except keys with no updated_at are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.updated_at if v.updated_at != null }
}
output "external_locations_updated_by" {
  description = "Map of updated_by values across all external_locations, keyed the same as var.external_locations except keys with no updated_by are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.updated_by if v.updated_by != null && length(v.updated_by) > 0 }
}
output "external_locations_url" {
  description = "Map of url values across all external_locations, keyed the same as var.external_locations except keys with no url are omitted"
  value       = { for k, v in databricks_external_location.external_locations : k => v.url if v.url != null && length(v.url) > 0 }
}

