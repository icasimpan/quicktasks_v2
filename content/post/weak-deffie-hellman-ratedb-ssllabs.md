---
title: "Weak Deffie-Hellman and a B rating in SSL Labs Test"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, deffie-hellman, ssllabs, troubleshoot]
draft: false
---

You can fix it by creating .a 'dhparam' file as follows in nginx:

```
cd /etc/ssl/certs
openssl dhparam -dsaparam -out ./dhparam.pem 4096
```

NOTE: "-dsaparam" is significant. Otherwise, it would take creation of dhparam.pem almost 24hours or more.
See https://security.stackexchange.com/questions/95178/diffie-hellman-parameters-still-calculating-after-24-hours

then add this to nginx config
```
ssl_dhparam /etc/ssl/certs/dhparam.pem;
```
