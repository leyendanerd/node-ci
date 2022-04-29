#!/bin/bash

apt-get -y update
apt-get install docker.io docker-compose
docker pull julio0619/node-ci
docker run -p 8080:8080 julio0619/node-ci
