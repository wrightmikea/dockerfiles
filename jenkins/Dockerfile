FROM ubuntu 

# ubuntu-jdk17-jenkins
MAINTAINER Mike Wright 
# wrightmikea@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:webupd8team/java -y

RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java7-installer
RUN apt-get install -y wget

RUN mkdir /downloads
RUN wget -O /downloads/jenkins.war http://mirrors.jenkins-ci.org/war/latest/jenkins.war

VOLUME /work
WORKDIR /work
EXPOSE 8080

CMD java -Xmx1600M -Xms768M -DJENKINS_HOME=/work -jar /downloads/jenkins.war

