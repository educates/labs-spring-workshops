#!/bin/bash

HERE=`dirname $0`

set -eo pipefail
set -x

mkdir -p $HOME/exercises

curl -o $HOME/exercises/demo.zip 'https://start.spring.io/starter.zip?type=maven-project&language=java&dependencies=web&name=demo&groupId=com.example&artifactId=demo&description=Demo+project+for+Spring+Boot&packaging=jar&packageName=com.example.demo&javaVersion=17'
unzip -o $HOME/exercises/demo.zip -d $HOME/exercises/demo

cp $HERE/DemoApplication.java $HOME/exercises/demo/src/main/java/com/example/demo/DemoApplication.java
