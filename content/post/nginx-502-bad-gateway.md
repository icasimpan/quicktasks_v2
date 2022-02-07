---
title: "Nginx 502 Bad Gateway"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, troubleshooting, error]
draft: false
---

1. Check if php-fpm service is up
2. Check if being listened to by nginx (for CentOS, look for "listen" in /etc/php-fpm.d/www.conf)
3. Adjust nginx vhost (fastcgi_pass) when necessary (example below)
```
fastcgi_pass 127.0.0.1:9000;
```
