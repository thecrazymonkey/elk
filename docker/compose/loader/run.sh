#!/bin/sh
curl -H "Content-Type: application/json" -X POST -d '{"name":"Elasticsearch-System-Metrics","type":"elasticsearch","access":"proxy","url":"http://elasticsearch:9200","database":"metricbeat-*","basicAuth":false,"withCredentials":false,"isDefault":false,"jsonData":{"esVersion":5,"timeField":"@timestamp"}}' http://admin:admin@${GRAFANA_HOST}:3000/api/datasources 
curl -H "Content-Type: application/json" -X POST -d '{"name":"Elasticsearch-Statistics","type":"elasticsearch","access":"proxy","url":"http://elasticsearch:9200","database":"filebeat-stat-*","basicAuth":false,"withCredentials":false,"isDefault":false,"jsonData":{"esVersion":5,"timeField":"@timestamp"}}' http://admin:admin@${GRAFANA_HOST}:3000/api/datasources
curl -H "Content-Type: application/json" -X POST -d '{"name":"Elasticsearch-UL","type":"elasticsearch","access":"proxy","url":"http://elasticsearch:9200","database":"filebeat-log-*","basicAuth":false,"withCredentials":false,"isDefault":false,"jsonData":{"esVersion":5,"timeField":"@timestamp"}}' http://admin:admin@${GRAFANA_HOST}:3000/api/datasources

curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" http://admin:admin@${GRAFANA_HOST}:3000/api/dashboards/db -d @/dashboards/System_Monitoring.json
curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" http://admin:admin@${GRAFANA_HOST}:3000/api/dashboards/db -d @/dashboards/Unified_Logging.json
curl -X POST -H "Content-Type: application/json" -H "Accept: application/json" http://admin:admin@${GRAFANA_HOST}:3000/api/dashboards/db -d @/dashboards/PCRF_Statistics.json


