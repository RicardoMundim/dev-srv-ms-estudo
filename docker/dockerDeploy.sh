#!/bin/sh

docker stack deploy -c /images/build/$1/docker-compose.yml bia 
