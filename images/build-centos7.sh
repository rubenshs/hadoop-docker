#!/bin/bash
# --force-rm --no-cache
docker build -t localhost:5000/base-centos7:latest -f dockerfile.centos7 .
docker push localhost:5000/base-centos7:latest