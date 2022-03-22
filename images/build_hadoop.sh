#!/bin/bash
#export DOCKER_BUILDKIT=1
docker build -t localhost:5000/hadoop:latest -f dockerfile.hadoop .
docker push localhost:5000/hadoop:latest