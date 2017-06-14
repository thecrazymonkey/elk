#!/bin/bash
#./scripts/import_dashboards -only-index -es http://elasticsearch:9200
#curl -H 'Content-Type: application/json' -XPUT 'http://elasticsearch:9200/_template/filebeat' -d@filebeat.template.json
filebeat -e