#!/bin/bash
#docker build --force-rm --no-cache -t hadoop-namenode:1.0.0 -f Dockerfile .
docker build -t hadoop-namenode:1.0.0 -f Dockerfile .