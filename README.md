## GoCD Agent with .NET Core SDK Installed

This docker image install .NET Core SDK on top of GoCD Agent image

[Docker Hub Repository](https://hub.docker.com/r/hpcsc/gocd-agent-dotnet/)

### Available tags

- `net-2.1`
    - Ubuntu v16.04
    - GoCD Agent v18.2.0
    - .NET Core SDK v2.1
    - Docker CE v17.12.0

*Note:* this image installs Docker inside a Docker container. It needs to be started with docker socket from host machine mounted as a volume, .e.g:

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock hpcsc/gocd-agent-dotnet:net-2.1
```

For more details: [https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/](https://jpetazzo.github.io/2015/09/03/do-not-use-docker-in-docker-for-ci/)
