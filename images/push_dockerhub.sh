#!/bin/bash

export USUARIO=rubenss

docker tag localhost:5000/hadoop:latest ${USUARIO}/hadoop:latest
docker tag localhost:5000/base-centos7:latest ${USUARIO}/hadoop:base

docker login -u=${USUARIO}

docker push ${USUARIO}/hadoop:base
docker push ${USUARIO}/hadoop:latest

