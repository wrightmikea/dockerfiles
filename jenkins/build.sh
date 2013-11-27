#!/bin/bash
# builds a docker image with ubuntu, jdk1.7, and jenkins
# assumes that the docker daemon is running (./run-docker-daemon.sh)
(cd ../jenkins;sudo docker build .)


