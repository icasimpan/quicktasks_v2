---
title: "Force Remove Docker Images"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, images, remove, forced]
draft: false
---

```
[root@selenium02 ~]# docker rmi ad66a5961263
Error response from daemon: conflict: unable to delete ad66a5961263 (must be forced) - image is being used by stopped container 088219585a61
[root@selenium02 ~]# docker rmi -f ad66a5961263
```
