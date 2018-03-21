#!/bin/sh

DIND_TAG=$1
NETCORE_PACKAGE=$2
TAG=$3

if [[ ( $DIND_TAG = "" ) || ( $NETCORE_PACKAGE = "" ) || ( $TAG = "" ) ]]; then
    echo "Usage: ./build.sh [GoCD_agent_dind_version] [.NET_Core_apt_package_version] [Tag]"
    echo "Example: ./build.sh gocd-18.2.0-ubuntu-16.04-docker-17.12 dotnet-sdk-2.1.101 net-2.1"
    exit 1
fi;

docker build --build-arg DIND_TAG=$DIND_TAG \
             --build-arg NETCORE_PACKAGE=$NETCORE_PACKAGE \
             -t hpcsc/gocd-agent-dotnet:$TAG \
             .
