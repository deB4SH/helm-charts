#!/bin/bash
if [ -d ./test ]; then
    rm -rf ./test
fi
helm template --debug --release-name nexus  --output-dir ./test ./