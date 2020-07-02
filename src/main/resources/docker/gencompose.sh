#!/bin/sh

VERSION=`echo $1 | cut -d"-" -f2`

echo "version: '3'
services:
  proxy_whatsapp:
    image: 172.16.43.151:8085/repository/bia-images/@artifactId@:v@version@
    hostname: @artifactId@
    environment:
      - TZ=America/Fortaleza
      - spring.profiles.active=lab	 	  
    ports:
      - \"10084:8080\"
    deploy:
      replicas: 1
      resources:
        limits:
          cpus: \"0.5\"
          memory: 500M
      restart_policy:
        condition: on-failure
    networks:
      - webnet
networks:
  webnet:" > /images/build/$1/docker-compose.yml
