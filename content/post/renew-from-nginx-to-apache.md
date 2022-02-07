---
title: "Formerly using nginx, Moving to Apache won't Renew Cert"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, nginx, apache, troubleshooting, renew, letsencrypt]
draft: false
---

It's quite expected that certificate won't renew as the automation has been broken. What you can do is install the apache version of certbot

```
yum install python-certbot-apache
```

and re-issue the certificate
```
sudo certbot --apache -d www.example.org
```
