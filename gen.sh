#!/bin/bash

openapi3-code-generator-exe \
    spec.json \
    --output-dir=codegen \
    --package-name hcloud-haskell \
    --do-not-generate-stack-project \
    --module-name=HCloud \
    --convert-to-camel-case=true
