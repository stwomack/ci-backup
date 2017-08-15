#!/usr/bin/env bash

set -e -x

fly -t lite login -c http://192.168.100.4:8080
fly -t ci login
fly -t ci set-pipeline --pipeline ers-service --config pipeline.yml --load-vars-from .cf-env.yml
fly -t ci unpause-pipeline --pipeline ers-service

#fly execute -c ci/pipeline.yml -i demo-service=.