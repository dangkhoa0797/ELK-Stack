#!/bin/bash
curl -XPOST "http://elasticsearch:9200/index/_delete_by_query" -H 'Content-Type: application/json' -d'
{
"query": {
"range" : {
"@timestamp" : {
"lte" : "now-3d"
}
}
}
}'

curl -XPOST "http://elasticsearch:9200/index/_forcemerge"


#POST logstash/_delete_by_query
##{
#  "query": {
#    "range" : {
#      "@timestamp" : {
#        "gte" : "09/01/2022",
#        "lte" : "09/30/2022",
#        "format": "MM/dd/yyyy||yyyy"
#        }
#    }
#  }
#}
#
#POST logstash/_forcemerge
#
#GET /_cat/indices
