#!/bin/sh

VERSION=`echo $1 | cut -d"-" -f2`

docker push 172.16.43.151:8085/repository/bia-images/@artifactId@:v@version@