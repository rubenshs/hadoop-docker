#!/bin/bash
# --force-rm --no-cache
#export DOCKER_BUILDKIT=1
docker build -t base-centos7:latest -f ./../images/dockerfile.centos .