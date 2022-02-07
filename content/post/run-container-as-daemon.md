---
title: "Run Container as Daemon"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, daemon]
draft: false
---

```
docker run -d --name redisDynamic -p 6379 redis:latest
```
this will bind though to host port at random. To check bound port, use
```
docker port redisDynamic 6379
```
