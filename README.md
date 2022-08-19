# Aiven Flink Terraform module

Terraform module which creates Aiven Flink resources

## Usage

```hcl
module "flink" {
  source       = "tf-cloud-modules/flink/aiven"
  project      = "test"
  service_name = "test"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 3.5.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_flink.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/flink) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_execution_checkpointing_interval_ms"></a> [execution\_checkpointing\_interval\_ms](#input\_execution\_checkpointing\_interval\_ms) | Flink execution.checkpointing.interval in milliseconds. | `string` | `"60000"` | no |
| <a name="input_execution_checkpointing_timeout_ms"></a> [execution\_checkpointing\_timeout\_ms](#input\_execution\_checkpointing\_timeout\_ms) | Flink execution.checkpointing.timeout in milliseconds. | `string` | `"600000"` | no |
| <a name="input_flink_version"></a> [flink\_version](#input\_flink\_version) | Flink major version. | `string` | `"1.13"` | no |
| <a name="input_ip_filter"></a> [ip\_filter](#input\_ip\_filter) | IP filter | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_number_of_task_slots"></a> [number\_of\_task\_slots](#input\_number\_of\_task\_slots) | Flink taskmanager.numberOfTaskSlots. | `string` | `"5"` | no |
| <a name="input_parallelism_default"></a> [parallelism\_default](#input\_parallelism\_default) | Flink parallelism.default. | `string` | `"1"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"startup-4"` | no |
| <a name="input_privatelink_flink"></a> [privatelink\_flink](#input\_privatelink\_flink) | Enable Flink. | `bool` | `false` | no |
| <a name="input_privatelink_prometheus"></a> [privatelink\_prometheus](#input\_privatelink\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_restart_strategy"></a> [restart\_strategy](#input\_restart\_strategy) | Flink restart-strategy. | `string` | `"failure-rate"` | no |
| <a name="input_restart_strategy_delay_sec"></a> [restart\_strategy\_delay\_sec](#input\_restart\_strategy\_delay\_sec) | Flink restart-strategy.failure-rate.delay in seconds. | `string` | `"10"` | no |
| <a name="input_restart_strategy_failure_rate_interval_min"></a> [restart\_strategy\_failure\_rate\_interval\_min](#input\_restart\_strategy\_failure\_rate\_interval\_min) | Flink restart-strategy.failure-rate.failure-rate-interval in minutes. | `string` | `"60"` | no |
| <a name="input_restart_strategy_max_failures"></a> [restart\_strategy\_max\_failures](#input\_restart\_strategy\_max\_failures) | Flink restart-strategy.failure-rate.max-failures-per-interval | `string` | `"60"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_flink_user_config"></a> [flink\_user\_config](#output\_flink\_user\_config) | Flick user configurable settings. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
<!-- END_TF_DOCS -->