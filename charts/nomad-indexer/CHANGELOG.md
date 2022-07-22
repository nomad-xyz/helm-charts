# Changelog

## Unreleased

## 0.0.19

- add note about overriding psql exporter host value

## 0.0.18

- enable pg_stat_statements as part of indexer postgres shared preload libraries
- create extension if it doesn't already exist as part of indexer postgres setup
- override indexer psql exporter queries to support our version of postgres (total_time was split into total_exec_time + total_plan_time in postgres v13+)
- fix shape of indexer psql exporter values

## 0.0.17

- downgrade postgres dependency from v11.6.16 -> v8.6.4
- commit postgres chart dependency since it's not hosted on bitnami
- disable pod security policy on prometheus-postgres-exporter

## 0.0.16

- downgrade postgres version from v14 -> v11.7.0-debian-10-r26 to be compatible with staging/prod postgres version

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
