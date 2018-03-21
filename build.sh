#!/bin/sh

GOCD_VERSION=$1
NETCORE_PACKAGE=$2
DOCKER_CE_PACKAGE=$3
TAG=$4

if [[ ( $GOCD_VERSION = "" ) || ( $NETCORE_PACKAGE = "" ) || ( $DOCKER_CE_PACKAGE = "" ) || ( $TAG = "" ) ]]; then
    echo "Usage: ./build.sh [GoCD_version] [.NET_Core_apt_package_version] [Docker_CE_apt_package_version] [Tag]"
    echo "Example: ./build.sh v18.2.0 dotnet-sdk-2.1.101 17.12.0~ce-0~ubuntu gocd-18.2.0-ubuntu-16.04-net-2.1"
    exit 1
fi;

docker build --build-arg GOCD_VERSION=$GOCD_VERSION \
             --build-arg NETCORE_PACKAGE=$NETCORE_PACKAGE \
             --build-arg DOCKER_CE_PACKAGE=$DOCKER_CE_PACKAGE \
             -t hpcsc/gocd-agent-dotnet:$TAG \
             .
