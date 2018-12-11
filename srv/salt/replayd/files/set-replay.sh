#! /bin/bash
set -x

hostname=$1
payload=$2
http_method=$3
content_type=$4
cat $payload


curl $hostname:9090/ -X $http_method -H "Content-Type: $content_type" --data-binary @$payload

