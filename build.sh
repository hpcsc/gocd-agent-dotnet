#!/bin/sh

DOCKERFILE=$1
TAG=$2

if [[ ( $DOCKERFILE = "" ) || ( $TAG = "" ) ]]; then
    echo "Usage: ./build.sh [path_to_docker_file] [tag]"
    echo "Example: ./build.sh ./2.1/gocd-18.2.0-ubuntu-16.04/Dockerfile gocd-18.2.0-ubuntu-16.04-net-2.1"
    exit 1
fi;

docker build -f $DOCKERFILE -t hpcsc/gocd-agent-dotnet:$TAG .
