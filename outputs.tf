output "lustre_instances_id" {
  description = "Map of id values across all lustre_instances, keyed the same as var.lustre_instances except keys with no id are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lustre_instances_access_rules_options" {
  description = "Map of access_rules_options values across all lustre_instances, keyed the same as var.lustre_instances except keys with no access_rules_options are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => one(v.access_rules_options) if v.access_rules_options != null && length(v.access_rules_options) > 0 }
}
output "lustre_instances_available_version" {
  description = "Map of available_version values across all lustre_instances, keyed the same as var.lustre_instances except keys with no available_version are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.available_version if v.available_version != null && length(v.available_version) > 0 }
}
output "lustre_instances_capacity_gib" {
  description = "Map of capacity_gib values across all lustre_instances, keyed the same as var.lustre_instances except keys with no capacity_gib are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.capacity_gib if v.capacity_gib != null && length(v.capacity_gib) > 0 }
}
output "lustre_instances_create_time" {
  description = "Map of create_time values across all lustre_instances, keyed the same as var.lustre_instances except keys with no create_time are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "lustre_instances_deletion_policy" {
  description = "Map of deletion_policy values across all lustre_instances, keyed the same as var.lustre_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "lustre_instances_description" {
  description = "Map of description values across all lustre_instances, keyed the same as var.lustre_instances except keys with no description are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lustre_instances_dynamic_tier_options" {
  description = "Map of dynamic_tier_options values across all lustre_instances, keyed the same as var.lustre_instances except keys with no dynamic_tier_options are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => one(v.dynamic_tier_options) if v.dynamic_tier_options != null && length(v.dynamic_tier_options) > 0 }
}
output "lustre_instances_effective_labels" {
  description = "Map of effective_labels values across all lustre_instances, keyed the same as var.lustre_instances except keys with no effective_labels are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "lustre_instances_effective_version" {
  description = "Map of effective_version values across all lustre_instances, keyed the same as var.lustre_instances except keys with no effective_version are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.effective_version if v.effective_version != null && length(v.effective_version) > 0 }
}
output "lustre_instances_filesystem" {
  description = "Map of filesystem values across all lustre_instances, keyed the same as var.lustre_instances except keys with no filesystem are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.filesystem if v.filesystem != null && length(v.filesystem) > 0 }
}
output "lustre_instances_gke_support_enabled" {
  description = "Map of gke_support_enabled values across all lustre_instances, keyed the same as var.lustre_instances except keys with no gke_support_enabled are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.gke_support_enabled if v.gke_support_enabled != null }
}
output "lustre_instances_instance_id" {
  description = "Map of instance_id values across all lustre_instances, keyed the same as var.lustre_instances except keys with no instance_id are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "lustre_instances_kms_key" {
  description = "Map of kms_key values across all lustre_instances, keyed the same as var.lustre_instances except keys with no kms_key are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "lustre_instances_labels" {
  description = "Map of labels values across all lustre_instances, keyed the same as var.lustre_instances except keys with no labels are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "lustre_instances_location" {
  description = "Map of location values across all lustre_instances, keyed the same as var.lustre_instances except keys with no location are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "lustre_instances_maintenance_policy" {
  description = "Map of maintenance_policy values across all lustre_instances, keyed the same as var.lustre_instances except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => one(v.maintenance_policy) if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "lustre_instances_mount_point" {
  description = "Map of mount_point values across all lustre_instances, keyed the same as var.lustre_instances except keys with no mount_point are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.mount_point if v.mount_point != null && length(v.mount_point) > 0 }
}
output "lustre_instances_name" {
  description = "Map of name values across all lustre_instances, keyed the same as var.lustre_instances except keys with no name are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lustre_instances_network" {
  description = "Map of network values across all lustre_instances, keyed the same as var.lustre_instances except keys with no network are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.network if v.network != null && length(v.network) > 0 }
}
output "lustre_instances_per_unit_storage_throughput" {
  description = "Map of per_unit_storage_throughput values across all lustre_instances, keyed the same as var.lustre_instances except keys with no per_unit_storage_throughput are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.per_unit_storage_throughput if v.per_unit_storage_throughput != null && length(v.per_unit_storage_throughput) > 0 }
}
output "lustre_instances_placement_policy" {
  description = "Map of placement_policy values across all lustre_instances, keyed the same as var.lustre_instances except keys with no placement_policy are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.placement_policy if v.placement_policy != null && length(v.placement_policy) > 0 }
}
output "lustre_instances_project" {
  description = "Map of project values across all lustre_instances, keyed the same as var.lustre_instances except keys with no project are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.project if v.project != null && length(v.project) > 0 }
}
output "lustre_instances_state" {
  description = "Map of state values across all lustre_instances, keyed the same as var.lustre_instances except keys with no state are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "lustre_instances_state_reason" {
  description = "Map of state_reason values across all lustre_instances, keyed the same as var.lustre_instances except keys with no state_reason are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.state_reason if v.state_reason != null && length(v.state_reason) > 0 }
}
output "lustre_instances_target_version" {
  description = "Map of target_version values across all lustre_instances, keyed the same as var.lustre_instances except keys with no target_version are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.target_version if v.target_version != null && length(v.target_version) > 0 }
}
output "lustre_instances_terraform_labels" {
  description = "Map of terraform_labels values across all lustre_instances, keyed the same as var.lustre_instances except keys with no terraform_labels are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "lustre_instances_uid" {
  description = "Map of uid values across all lustre_instances, keyed the same as var.lustre_instances except keys with no uid are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "lustre_instances_upcoming_maintenance_schedule" {
  description = "Map of upcoming_maintenance_schedule values across all lustre_instances, keyed the same as var.lustre_instances except keys with no upcoming_maintenance_schedule are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.upcoming_maintenance_schedule if v.upcoming_maintenance_schedule != null && length(v.upcoming_maintenance_schedule) > 0 }
}
output "lustre_instances_update_time" {
  description = "Map of update_time values across all lustre_instances, keyed the same as var.lustre_instances except keys with no update_time are omitted"
  value       = { for k, v in google_lustre_instance.lustre_instances : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

