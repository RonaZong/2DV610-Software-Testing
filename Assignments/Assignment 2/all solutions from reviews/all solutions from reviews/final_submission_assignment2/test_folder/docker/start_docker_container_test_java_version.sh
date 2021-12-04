#!/bin/bash 

name="my-web-server"

if [ "$1" == "7" ] || [ "$1" == "8" ] || [ "$1" == "9" ] || [ "$1" == "10" ] || [ "$1" == "11" ] || [ "$1" == "12" ] || [ "$1" == "13" ]; then

	echo "Stop and Removing container $name"
        docker container stop "$name"

        docker container rm "$name"
	
	echo "FROM openjdk:$1" | cat - DockerfileTemplate > temp && mv temp Dockerfile

	docker build -t "$name:java$1" .

	docker run -d --name "$name" -p 9000:9000 "$name:java$1"

elif [ "$1" == "stop" ] || [ "$1" == "Stop" ] || [ "$1" == "STOP" ]; then

	echo "Stop and Removing container $name"
        docker container stop "$name"

        docker container rm "$name"

else	
	echo "Currently version 7-13 is only valid version to be tested"
fi
