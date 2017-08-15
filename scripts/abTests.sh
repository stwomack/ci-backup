#!/usr/bin/env bash

set -e -x

ab -r -l -c 5 -n 9999 -v 0 -T 'application/json' "https://my-demo.app.40.87.60.30.cf.pcfazure.com/"
