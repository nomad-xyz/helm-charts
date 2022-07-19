# Changelog

## Unreleased

## 0.0.16

- downgrade postgres version from v14 -> v11.6 to be compatible with current postgres version

## 0.0.15

- Supported prometheus-postgres-exporter
- upgraded postgres dependency from v8 -> v11
- used remote bitnami chart instead of the committed local chart (with regenerated chart lock file)

## 0.0.14

- Support horizontally scaling the indexer api based on cpu utilization

## 0.0.13

- Added prometheus pod annotations for API
- Added back indexer metrics port for prometheus

## 0.0.12

- Renamed value statefulset -> core
- Cleaned up indexer values and moved into core / api sections if needed

## 0.0.11

- Added resource requests for Indexer, API, Postgres pods

## 0.0.6

- Added RPC environment variables to API configmap

## 0.0.5

- Bugfix in indexer configmap

## 0.0.4

- Added `REDIS_URL` value argument
