dockerfiles
===========

Sample dockerfiles

setup:
* install docker 0.5 or higher (see: http://www.docker.io)
* ensure that docker is in the root path (sudo ln -s '''path-to-docker''' /usr/sbin/docker)
* create a docker group (sudo groupadd docker)
* add your user to the docker group (sudo gpasswd -a '''name''' docker)
* (in a separate terminal) run the docker daemon (run-docker-daemon.sh)

jenkins:
* cd to the jenkins directory
* make a work directory to match the dockerfile (mkdir ~/jenkins-work)
* build the image (./build.sh)
* run the image (./run.sh)
* connect to the running jenkins on port 8080 at the IP address shown
(e.g. browse http://172.17.0.10:8080/)
* create/run jenkins jobs - note that configs and logs are in ~/jenkins-work
* stop jenkins (docker ps;docker stop '''jenkins-docker-id''')
* restart jenkins (./run.sh)
* verify that job configs and build logs are still there (at new IP address)

