resource "aiven_flink" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  cmk_id                  = var.cmk_id
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  flink_user_config {
    additional_backup_regions = var.additional_backup_regions
    custom_code               = var.custom_code
    flink_version             = var.flink_version
    ip_filter                 = var.ip_filter
    number_of_task_slots      = var.number_of_task_slots
    pekko_ask_timeout_s       = var.pekko_ask_timeout_s
    pekko_framesize_b         = var.pekko_framesize_b
    service_log               = var.service_log

    public_access {
      flink = var.public_access_flink
    }

    privatelink_access {
      prometheus = var.privatelink_prometheus
      flink      = var.privatelink_flink
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }
}
