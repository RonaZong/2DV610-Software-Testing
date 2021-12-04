#!/bin/bash 

image="riot/riotbuild:latest"
container="riot"

if [ "$1" == "stop" ] || [ "$1" == "Stop" ] || [ "$1" == "STOP" ]; then
	
	echo "Stop and Removing container $container"
        docker container stop "$container"
        docker container rm "$container"

elif [ "$1" == "" ]; then

	echo "Stop and Removing container $container"
        docker container stop "$container"
        docker container rm "$container"	
	docker build -t $image .
	docker run -d --name $container -p 9000:9000 $image

else 
	
	echo "Input STOP stop or Stop as argument to stop and remove container"

fi

