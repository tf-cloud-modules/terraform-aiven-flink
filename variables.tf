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

variable "cmk_id" {
  description = "UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest."
  type        = string
  default     = null
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

variable "additional_backup_regions" {
  description = "Additional Cloud Regions for Backup Replication."
  type        = list(string)
  default     = null
}

variable "custom_code" {
  description = "Enable to upload Custom JARs for Flink applications."
  type        = bool
  default     = null
}

variable "flink_version" {
  description = "Flink major version. Enum: `1.16`, `1.19`, `1.20`, and newer."
  type        = string
  default     = "1.20"
}

variable "ip_filter" {
  description = "IP filter"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "number_of_task_slots" {
  description = "Flink taskmanager.numberOfTaskSlots."
  type        = number
  default     = 5
}

variable "pekko_ask_timeout_s" {
  description = "Timeout in seconds used for all futures and blocking Pekko requests."
  type        = number
  default     = null
}

variable "pekko_framesize_b" {
  description = "Maximum size in bytes for messages exchanged between the JobManager and the TaskManagers."
  type        = number
  default     = null
}

variable "service_log" {
  description = "Store logs for the service so that they are available in the HTTP API and console."
  type        = bool
  default     = null
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

variable "public_access_flink" {
  description = "Allow clients to connect to flink from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = true
}
