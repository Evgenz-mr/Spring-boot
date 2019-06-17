FROM ubuntu:16.04

MAINTAINER Evgeny Mrykhin <Evgeny_Mrykhin@epam.com>

RUN mkdir -p /home/gradle

WORKDIR /home/gradle

#Downloading sping-boot

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install openjdk-8-jdk -y && apt-get install wget -y


RUN wget https://github.com/spring-guides/gs-spring-boot/archive/master.zip
RUN apt-get install zip unzip -y && unzip master.zip
RUN cd gs-spring-boot-master/initial/ && ./gradlew build
RUN cp /home/gradle/gs-spring-boot-master/initial/build/libs/*.jar /home/gradle/

ADD start.sh /home/gradle
