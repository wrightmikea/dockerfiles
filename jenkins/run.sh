#!/bin/bash
# runs a docker image with ubuntu, jdk1.7, and jenkins, using the current directory as a persistent volume
# assumes that the docker daemon is running (./run-docker-daemon.sh)
(cd ~/jenkins-work;\
docker run -d -i -t -v ~/jenkins-work:/work ubuntu-jdk17-jenkins;\
docker inspect `docker ps -l -q` | grep IPAddress)




