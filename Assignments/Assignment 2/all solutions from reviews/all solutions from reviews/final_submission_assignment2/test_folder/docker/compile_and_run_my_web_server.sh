#!/bin/bash

dir="MyWebServer"

cd "$dir/src"

find . -name "*.java" | xargs javac -d "../bin"

cd "../bin"

java se.lnu.http.HTTPServerConsole 9000 se/lnu/http/resources/inner/



