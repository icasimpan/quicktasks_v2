---
title: "Rerun a Docker Container Instance"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container]
draft: false
---

Given these:
```
[root@selenium php-5.1.2]# docker ps -a
CONTAINER ID        IMAGE                                   COMMAND                  CREATED             STATUS                     PORTS                    NAMES
7e89768a78f9        e9a68b923b81                            "/bin/sh -c 'makepkg…"   7 minutes ago       Exited (1) 4 minutes ago                            nostalgic_lovelace
af5262bdb8c1        selenium/node-chrome:2.53.1-beryllium   "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                                          seleniumhub_chrome_5
3d788ffebc32        selenium/node-chrome:2.53.1-beryllium   "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                                          seleniumhub_chrome_2
0bb97cb44ccd        selenium/node-chrome:2.53.1-beryllium   "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                                          seleniumhub_chrome_3
982e0a223e1e        selenium/node-chrome:2.53.1-beryllium   "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                                          seleniumhub_chrome_1
b4a2a19f9e80        selenium/node-chrome:2.53.1-beryllium   "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                                          seleniumhub_chrome_4
70e02da9435a        selenium/hub:2.53.1-beryllium           "/opt/bin/entry_poin…"   4 weeks ago         Up 4 weeks                 0.0.0.0:4444->4444/tcp   selenium-hub
```

Run "nostalgic_lovelace" as follows:

```
docker restart nostalgic_lovelace
```
