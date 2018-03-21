ARG DIND_TAG=gocd-18.2.0-ubuntu-16.04-docker-17.12
FROM hpcsc/gocd-agent-dind:$DIND_TAG
MAINTAINER David Nguyen <hungphuongjc@gmail.com>

ARG NETCORE_PACKAGE=dotnet-sdk-2.1.101

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN apt-get update && \
    apt-get install -y $NETCORE_PACKAGE
