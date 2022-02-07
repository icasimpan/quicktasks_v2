---
title: "Remove All Docker Containers"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, remove]
draft: false
---

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
Details in https://coderwall.com/p/ewk0mq/stop-remove-all-docker-containers
