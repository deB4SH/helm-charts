#!/bin/bash
if [ -d ./test/out ]; then
    rm -rf ./test/out
fi
helm template --debug --release-name calibre-web  --output-dir ./test/out -f ./dbg.values.yaml ./