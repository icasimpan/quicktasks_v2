---
title: "Nginx HSTS"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, sslcert, hsts]
draft: false
---

Update the following line of code in config file’s server Block.
```
add_header Strict-Transport-Security “max-age=63072000; includeSubdomains; “;
```
Restart the NGINX server.

More details in https://medium.com/@sslsecurity/how-to-enable-hsts-on-apache-nginx-and-lighttpd-8b0c64155911
