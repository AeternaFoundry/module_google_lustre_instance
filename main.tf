resource "google_lustre_instance" "lustre_instances" {
  for_each = var.lustre_instances

  capacity_gib                = each.value.capacity_gib
  filesystem                  = each.value.filesystem
  instance_id                 = each.value.instance_id
  location                    = each.value.location
  network                     = each.value.network
  deletion_policy             = each.value.deletion_policy
  description                 = each.value.description
  gke_support_enabled         = each.value.gke_support_enabled
  kms_key                     = each.value.kms_key
  labels                      = each.value.labels
  per_unit_storage_throughput = each.value.per_unit_storage_throughput
  placement_policy            = each.value.placement_policy
  project                     = each.value.project
  target_version              = each.value.target_version

  dynamic "access_rules_options" {
    for_each = each.value.access_rules_options != null ? [each.value.access_rules_options] : []
    content {
      dynamic "access_rules" {
        for_each = access_rules_options.value.access_rules != null ? access_rules_options.value.access_rules : []
        content {
          ip_address_ranges = access_rules.value.ip_address_ranges
          name              = access_rules.value.name
          squash_mode       = access_rules.value.squash_mode
        }
      }
      default_squash_gid  = access_rules_options.value.default_squash_gid
      default_squash_mode = access_rules_options.value.default_squash_mode
      default_squash_uid  = access_rules_options.value.default_squash_uid
    }
  }

  dynamic "dynamic_tier_options" {
    for_each = each.value.dynamic_tier_options != null ? [each.value.dynamic_tier_options] : []
    content {
      mode = dynamic_tier_options.value.mode
    }
  }

  dynamic "maintenance_policy" {
    for_each = each.value.maintenance_policy != null ? [each.value.maintenance_policy] : []
    content {
      dynamic "maintenance_exclusion_window" {
        for_each = maintenance_policy.value.maintenance_exclusion_window != null ? [maintenance_policy.value.maintenance_exclusion_window] : []
        content {
          end_date {
            day   = maintenance_exclusion_window.value.end_date.day
            month = maintenance_exclusion_window.value.end_date.month
            year  = maintenance_exclusion_window.value.end_date.year
          }
          start_date {
            day   = maintenance_exclusion_window.value.start_date.day
            month = maintenance_exclusion_window.value.start_date.month
            year  = maintenance_exclusion_window.value.start_date.year
          }
          time {
            hours   = maintenance_exclusion_window.value.time.hours
            minutes = maintenance_exclusion_window.value.time.minutes
            nanos   = maintenance_exclusion_window.value.time.nanos
            seconds = maintenance_exclusion_window.value.time.seconds
          }
        }
      }
      weekly_maintenance_windows {
        day_of_week = maintenance_policy.value.weekly_maintenance_windows.day_of_week
        start_time {
          hours   = maintenance_policy.value.weekly_maintenance_windows.start_time.hours
          minutes = maintenance_policy.value.weekly_maintenance_windows.start_time.minutes
          nanos   = maintenance_policy.value.weekly_maintenance_windows.start_time.nanos
          seconds = maintenance_policy.value.weekly_maintenance_windows.start_time.seconds
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

