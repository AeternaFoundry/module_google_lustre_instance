variable "lustre_instances" {
  description = <<EOT
Map of lustre_instances, attributes below
Required:
    - capacity_gib
    - filesystem
    - instance_id
    - location
    - network
Optional:
    - deletion_policy
    - description
    - gke_support_enabled
    - kms_key
    - labels
    - per_unit_storage_throughput
    - placement_policy
    - project
    - target_version
    - access_rules_options (block):
        - access_rules (optional, block):
            - ip_address_ranges (required)
            - name (required)
            - squash_mode (required)
        - default_squash_gid (optional)
        - default_squash_mode (required)
        - default_squash_uid (optional)
    - dynamic_tier_options (block):
        - mode (required)
    - maintenance_policy (block):
        - maintenance_exclusion_window (optional, block):
            - end_date (required, block):
                - day (optional)
                - month (optional)
                - year (optional)
            - start_date (required, block):
                - day (optional)
                - month (optional)
                - year (optional)
            - time (required, block):
                - hours (optional)
                - minutes (optional)
                - nanos (optional)
                - seconds (optional)
        - weekly_maintenance_windows (required, block):
            - day_of_week (required)
            - start_time (required, block):
                - hours (optional)
                - minutes (optional)
                - nanos (optional)
                - seconds (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    capacity_gib                = string
    filesystem                  = string
    instance_id                 = string
    location                    = string
    network                     = string
    deletion_policy             = optional(string)
    description                 = optional(string)
    gke_support_enabled         = optional(bool)
    kms_key                     = optional(string)
    labels                      = optional(map(string))
    per_unit_storage_throughput = optional(string)
    placement_policy            = optional(string)
    project                     = optional(string)
    target_version              = optional(string)
    access_rules_options = optional(object({
      access_rules = optional(list(object({
        ip_address_ranges = list(string)
        name              = string
        squash_mode       = string
      })))
      default_squash_gid  = optional(number)
      default_squash_mode = string
      default_squash_uid  = optional(number)
    }))
    dynamic_tier_options = optional(object({
      mode = string
    }))
    maintenance_policy = optional(object({
      maintenance_exclusion_window = optional(object({
        end_date = object({
          day   = optional(number)
          month = optional(number)
          year  = optional(number)
        })
        start_date = object({
          day   = optional(number)
          month = optional(number)
          year  = optional(number)
        })
        time = object({
          hours   = optional(number)
          minutes = optional(number)
          nanos   = optional(number)
          seconds = optional(number)
        })
      }))
      weekly_maintenance_windows = object({
        day_of_week = string
        start_time = object({
          hours   = optional(number)
          minutes = optional(number)
          nanos   = optional(number)
          seconds = optional(number)
        })
      })
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

