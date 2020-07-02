#!/bin/sh

echo 'FROM openjdk:8-jre-alpine
EXPOSE 8080
LABEL LAB="LAB1330"

COPY /target/@project.build.finalName@.@project.packaging@ @project.build.finalName@.@project.packaging@

ENTRYPOINT ["java","-jar","@project.build.finalName@.@project.packaging@"]' > /images/build/$1/Dockerfile
