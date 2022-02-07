---
title: "Drupal Memcache"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, memcache, caching, ubuntu]
draft: false
---

Had to install as follows (need to be php7.x):
```
pecl install memcached
```

Dependencies may need to be installed
```
# yum groupinstall "Development tools"
# yum install zlib zlib-devel
# yum install php php-devel php-pear
echo "extension=memcache.so" >> /etc/php.d/memcache.ini
```

See https://tecadmin.net/install-memcached-with-pecl-memcache-on-centos-rhel/

For Ubuntu 16.x (with php5.6.x)

```
apt-get install memcached
apt-get install php-memcache
```
