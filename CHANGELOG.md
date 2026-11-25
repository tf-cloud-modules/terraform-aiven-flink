# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Deprecated
- This module is deprecated because Aiven no longer permits creation of new Aiven for Apache Flink services. The module is frozen and will be archived after its final release; this release does not perform a migration of existing services.

### Added
- Add aiven/aiven provider v4 `flink_user_config` fields: `additional_backup_regions`, `custom_code`, `pekko_ask_timeout_s`, `pekko_framesize_b`, `service_log`.
- Add `public_access` block support via the `public_access_flink` variable (defaults to `true` to preserve the previous behavior).
- Add `cmk_id` variable and output for bring your own key (BYOK) encryption.
- Add `maintenance_window_enabled` output.

### Changed
- **Breaking:** add aiven/aiven provider v4 support; raise provider constraint to `>= 4.66.0, < 5.0.0`.
- **Breaking:** remove variables dropped by the provider in v4: `execution_checkpointing_interval_ms`, `execution_checkpointing_timeout_ms`, `parallelism_default`, `restart_strategy`, `restart_strategy_delay_sec`, `restart_strategy_failure_rate_interval_min`, `restart_strategy_max_failures`.
- **Breaking:** change the default `flink_version` from `1.13` to `1.20` (provider v4 supports Flink `1.16`, `1.19`, `1.20` and newer).
- Change `number_of_task_slots` variable type from `string` to `number` to match the provider schema.

## [0.4.0] - 2022-08-19

### Added
- Add complete example.

## [0.3.0] - 2022-08-19

### Added
- Add `privatelink_access` support.

## [0.2.0] - 2022-08-19

### Added
- Add `flink_user_config` support.

## [0.1.0] - 2022-08-19

Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-flink/compare/0.4.0...HEAD
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-flink/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-flink/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-flink/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-flink/releases/tag/0.1.0
