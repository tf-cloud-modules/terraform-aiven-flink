variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "startup-4"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "execution_checkpointing_interval_ms" {
  description = "Flink execution.checkpointing.interval in milliseconds."
  type        = string
  default     = "60000"
}

variable "execution_checkpointing_timeout_ms" {
  description = "Flink execution.checkpointing.timeout in milliseconds."
  type        = string
  default     = "600000"
}

variable "flink_version" {
  description = "Flink major version."
  type        = string
  default     = "1.13"
}

variable "ip_filter" {
  description = "IP filter"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "number_of_task_slots" {
  description = "Flink taskmanager.numberOfTaskSlots."
  type        = string
  default     = "5"
}

variable "parallelism_default" {
  description = "Flink parallelism.default."
  type        = string
  default     = "1"
}

variable "restart_strategy" {
  description = "Flink restart-strategy."
  type        = string
  default     = "failure-rate"
}

variable "restart_strategy_delay_sec" {
  description = " Flink restart-strategy.failure-rate.delay in seconds."
  type        = string
  default     = "10"
}

variable "restart_strategy_failure_rate_interval_min" {
  description = "Flink restart-strategy.failure-rate.failure-rate-interval in minutes."
  type        = string
  default     = "60"
}

variable "restart_strategy_max_failures" {
  description = "Flink restart-strategy.failure-rate.max-failures-per-interval"
  type        = string
  default     = "60"
}

variable "privatelink_prometheus" {
  description = "Enable prometheus."
  type        = bool
  default     = false
}

variable "privatelink_flink" {
  description = "Enable Flink."
  type        = bool
  default     = false
}