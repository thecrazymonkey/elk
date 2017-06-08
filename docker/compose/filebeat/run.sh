#!/bin/bash
curl -H 'Content-Type: application/json' -XPUT 'http://elasticsearch:9200/_template/filebeat' -d@filebeat.template.json
filebeat -e
tail -f /dev/null