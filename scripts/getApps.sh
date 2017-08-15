#!/usr/bin/env bash

set -e -x

for i in `seq 100 10000`; do
    cf apps | grep -v 'demo-service.pcf1.fe.gopivotal.com'
done
