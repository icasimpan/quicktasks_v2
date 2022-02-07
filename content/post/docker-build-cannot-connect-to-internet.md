---
title: "Docker Build Cannot Connect to Internet"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, internet]
draft: false
---

Example scenario:
```
[root@selenium php-5.1.2]# docker build -t php5_1_2 .
Sending build context to Docker daemon  8.071MB
Step 1/9 : FROM nubs/arch-build
 ---> a68cd3855bfe
Step 2/9 : MAINTAINER Spencer Rinehart <anubis@overthemonkey.com>
 ---> Using cache
 ---> 0d099a2cd179
Step 3/9 : COPY php/PKGBUILD php/*.patch /package/
 ---> Using cache
 ---> e9a68b923b81
Step 4/9 : RUN makepkg --force
 ---> Running in 22c4f167216a
==> Making package: php 5.1.2-1 (Wed May  9 21:15:05 UTC 2018)
==> Checking runtime dependencies...
==> Checking buildtime dependencies...
==> Retrieving sources...
  -> Downloading php-5.1.2.tar.gz...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:06 --:--:--     0
```

In docker CE, added the value of host's /etc/resolv.conf to /var/lib/docker/network/files/resolv.conf

Then, restart docker

Some details and other use cases in https://stackoverflow.com/questions/25130536/dockerfile-docker-build-cant-download-packages-centos-yum-debian-ubuntu-ap
