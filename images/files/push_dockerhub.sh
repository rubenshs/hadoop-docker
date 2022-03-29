#!/bin/bash

docker tag localhost:5000/hadoop:latest loester87/hadoop:latest
docker tag localhost:5000/base-centos7:latest loester87/hadoop:base

docker login -u=loester87

docker push loester87/hadoop:base
docker push loester87/hadoop:latest

