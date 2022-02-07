---
title: "Removing docker0 Interface"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, interface]
draft: false
---

If you see something like:
```
root@example.com:/etc/apache2/sites-enabled# ifconfig
docker0   Link encap:Ethernet  HWaddr 02:42:8e:e1:53:84 
          inet addr:172.17.0.1  Bcast:0.0.0.0  Mask:255.255.0.0
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
```
And you're sure you don't need it, remove it using
```
ip link del docker0
```
See https://superuser.com/questions/995373/remove-docker0-bridge
