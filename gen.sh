#!/bin/bash

openapi-generator-cli generate -g ruby --additional-properties=library=faraday,gemName=leanix_mtm_api -i https://app.leanix.net/services/mtm/v1/api-docs/swagger.json? -o . --skip-validate-spec

