#!/bin/bash
docker build --force-rm --no-cache -t localhost:5000/hadoop-namenode:latest -f dockerfile.hadoop .
docker push localhost:5000/hadoop-namenode:latest