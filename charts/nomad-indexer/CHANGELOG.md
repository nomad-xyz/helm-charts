# Changelog

## Unreleased

- Supported prometheus-postgres-exporter
- Fixed postgres username / password / database dependency values to match what the subchart expects
- Changed image sha to use main instead of outdated commit
- Commented out resource limits for now (will re-add)

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
