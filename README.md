## Tiny size redis-trib on top of alpine

This repository contains **Dockerfile** of [redis-trib](http://download.redis.io/redis-stable/src/redis-trib.rb) for [Docker](https://www.docker.com/)'s [automated build](https://hub.docker.com/r/temafey/redis-trib/) published to the public [Docker Hub](https://hub.docker.com/).

### Docker Tags

`temafey/redis-trib` provides only one single tagged image:

* `latest`

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://hub.docker.com/r/temafey/redis-trib/) from public [Docker Hub](https://hub.docker.com/): `docker pull sgrio/redis-trib`

### Usage

    docker run -it temafey/redis-trib sh -c "echo 'yes' | ./redis-trib.rb create --replicas 1 \
    192.168.99.100:7001 \
    192.168.99.100:7002 \
    192.168.99.100:7003 \
    192.168.99.100:6000 \
    192.168.99.100:6001 \
    192.168.99.100:6002"
