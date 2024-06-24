#!/bin/bash
if [ -d ./test ]; then
    rm -rf ./test
fi
helm template --debug --release-name antennas-default --output-dir ./test ./
helm template --debug --release-name antennas-default-ingress-enabeld --output-dir ./test --set ingress.enabled=true  ./