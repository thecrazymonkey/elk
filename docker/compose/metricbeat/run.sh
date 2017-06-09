#!/bin/bash
./scripts/import_dashboards -es http://elasticsearch:9200
metricbeat -e -system.hostfs=/hostfs
