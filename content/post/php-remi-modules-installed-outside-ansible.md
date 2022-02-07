---
title: "PHP Remi modules installed outside ansible trick"
date: 2019-09-28T00:20:25+08:00
tags: [php, ansible, remi, module, install]
draft: false
---

Remi modules are installed in non-standard location. Geerlingguy's ansible role harmonizes it and install it in standard locations.

So, if you're not familiar with standard locations, just do the following trick

NOTE: In this case, I installed the memcache module for php7.1 from Remi's repo.
```
yum install -y php71-php-pecl-memcache.x86_64
```

Find where the memcache module is located
```
[root@example-staging www]# find / -iname *memcache*.so
/usr/lib64/httpd/modules/mod_socache_memcache.so
/opt/remi/php71/root/usr/lib64/php/modules/memcache.so
```
Cross-check with a standard installed php module (you can see which modules via 'php -m')
```
[root@example-staging www]# find / -iname sockets.so
/usr/lib64/php/modules/sockets.so
/usr/lib64/php-zts/modules/sockets.so
/opt/remi/php71/root/usr/lib64/php/modules/sockets.so
```
So
```
cd /etc/php.d
ln -s /etc/opt/remi/php71/php.d/40-memcache.ini
```

"php -m" would show this error
```
[root@example-staging php.d]# php -m|grep mem
PHP Warning:  PHP Startup: Unable to load dynamic library '/usr/lib64/php/modules/memcache.so' - /usr/lib64/php/modules/memcache.so: cannot open shared object file: No such file or directory in Unknown on line 0
```

To fix, run:
```
ln -s /opt/remi/php71/root/usr/lib64/php/modules/memcache.so /usr/lib64/php/modules/memcache.so
```
Rerun "php -m" and you will no longer have that error.
