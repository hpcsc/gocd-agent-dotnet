FROM gocd/gocd-agent-ubuntu-16.04:v17.4.0
MAINTAINER David Nguyen <hungphuongjc@gmail.com>

RUN sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
RUN apt-get install apt-transport-https; apt-get update; apt-get install -y dotnet-dev-1.0.3
