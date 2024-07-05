#!/bin/bash
if [ -d ./test ]; then
    rm -rf ./test
fi
helm dependency build  
helm template --debug --release-name kanboard  --output-dir ./test ./