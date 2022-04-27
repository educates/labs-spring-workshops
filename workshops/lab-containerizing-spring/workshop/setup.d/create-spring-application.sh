#!/bin/bash

HERE=`dirname $0`

set -eo pipefail
set -x

mkdir -p $HOME/exercises

curl -o $HOME/exercises/demo.zip 'https://start.spring.io/starter.zip?project=maven-project&language=java&boot=2.6.7&meta=%5Bobject+Object%5D&dependencies=web'
unzip -o $HOME/exercises/demo.zip -d $HOME/exercises/demo

cp $HERE/DemoApplication.java $HOME/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
