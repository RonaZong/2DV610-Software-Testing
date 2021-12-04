#!/bin/bash

# $1 port number
# $2 address resource folder

if [ "$1" == "" ] || [ "$2" == "" ]; then
	java -jar MyWebServer.jar 9000 resource1

else 
       java -jar MyWebServer.jar $1 $2	
fi
