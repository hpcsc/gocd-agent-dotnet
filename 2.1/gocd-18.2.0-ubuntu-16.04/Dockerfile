FROM gocd/gocd-agent-ubuntu-16.04:v18.2.0
MAINTAINER David Nguyen <hungphuongjc@gmail.com>

RUN apt-get update && \
    apt-get install -y apt-transport-https && \
    echo exit 0 > /usr/sbin/policy-rc.d

RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
RUN mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
RUN sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
RUN apt-get update && \
    apt-get install -y dotnet-sdk-2.1.101

RUN apt-get install -y ca-certificates \
                       curl \
                       software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" && \
    apt-get update && \
    apt-get install -y docker-ce=17.12.0~ce-0~ubuntu
