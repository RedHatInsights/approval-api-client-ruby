#! /bin/sh

rm -rf openapi.json
curl https://raw.githubusercontent.com/RedHatInsights/approval-api/master/public/doc/openapi-3-v1.2.json -o openapi.json
openapi-generator validate -i openapi.json
rm -rf ./lib
rm -rf ./spec
rm -rf ./docs
openapi-generator generate -g ruby -i openapi.json -c client-meta.json -o .
