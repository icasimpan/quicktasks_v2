---
title: "Comodo SSL Verification in Nginx"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, troubleshooting, comodo, verification, sslcert]
draft: false
---

Add the following to the vhost:
```
location ^~ /.well-known/ {
        log_not_found off;
     }
```
