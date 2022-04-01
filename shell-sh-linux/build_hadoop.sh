#!/bin/bash
#export DOCKER_BUILDKIT=1
docker build --force-rm --no-cache -t hadoop:latest -f ./../images/dockerfile.hadoop .