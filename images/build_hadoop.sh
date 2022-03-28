#!/bin/bash
#export DOCKER_BUILDKIT=1
docker build --force-rm --no-cache -t localhost:5000/hadoop:latest -f dockerfile.hadoop .
docker push localhost:5000/hadoop:latest