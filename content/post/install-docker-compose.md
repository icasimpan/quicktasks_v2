---
title: "Install Docker Compose"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, docker-compose]
draft: false
---

```
sudo yum install epel-release
sudo yum install -y python-pip
sudo pip install docker-compose
```
Further details in https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-centos-7

A more straightforward installation is by getting the binary directly via https://github.com/docker/compose/releases
For example, if you have an x86_64 linux, get the said version
```
~$ curl -o docker -OL https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-linux-x86_64; chmod u+x docker
~$ sudo mv docker /usr/local/bin
```
