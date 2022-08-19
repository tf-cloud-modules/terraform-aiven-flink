resource "aiven_flink" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  flink_user_config {
    execution_checkpointing_interval_ms        = var.execution_checkpointing_interval_ms
    execution_checkpointing_timeout_ms         = var.execution_checkpointing_timeout_ms
    flink_version                              = var.flink_version
    ip_filter                                  = var.ip_filter
    number_of_task_slots                       = var.number_of_task_slots
    parallelism_default                        = var.parallelism_default
    restart_strategy                           = var.restart_strategy
    restart_strategy_delay_sec                 = var.restart_strategy_delay_sec
    restart_strategy_failure_rate_interval_min = var.restart_strategy_failure_rate_interval_min
    restart_strategy_max_failures              = var.restart_strategy_max_failures
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }
}