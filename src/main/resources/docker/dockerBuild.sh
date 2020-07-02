#!/bin/sh

VERSION=`echo $1 | cut -d"-" -f2`

cd /images/build/$1
docker build -f /images/build/$1/Dockerfile -t "172.16.43.151:8085/repository/bia-images/@artifactId@:v@version@" .
