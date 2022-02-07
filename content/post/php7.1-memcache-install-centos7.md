---
title: "php7.1 memcache install in CentOS7"
date: 2019-09-28T00:20:25+08:00
tags: [php, memcache, centos7, install]
draft: false
---

```
yum install -y memcached libmemcached php71-php-pecl-memcache.x86_64
```

Harden memcached by at least making it listed only on loopback. Config is in /etc/sysonfig/memcached
```
PORT="11211"
USER="memcached"
MAXCONN="1024"
CACHESIZE="64"
OPTIONS="-l 127.0.0.1 -U 0"
```
Details in https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-memcached-on-centos-7
