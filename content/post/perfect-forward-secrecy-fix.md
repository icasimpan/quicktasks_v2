---
title: "Perfect Forward Secrecy Fix"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, perfect-forward-secrecy, pfs]
draft: false
---

1. Generate dhparam.pem
```
openssl dhparam -out /etc/nginx/ssl/dhparam.pem 4096 
```

2. Create /etc/nginx/conf.d/perfect-forward-secrecy.conf since all *.conf in /etc/nginx/conf.d:

```
ssl_protocols TLSv1.2;
ssl_prefer_server_ciphers on;
ssl_ciphers "EECDH+ECDSA+AESGCM EECDH+aRSA+AESGCM EECDH+ECDSA+SHA384 EECDH+ECDSA+SHA256 EECDH+aRSA+SHA384 EECDH+aRSA+SHA256 EECDH+aRSA+RC4 EECDH EDH+aRSA RC4 !aNULL !eNULL !LOW !3DES !MD5 !EXP !PSK !SRP !DSS !MEDIUM";

ssl_dhparam /etc/nginx/ssl/dhparam.pem;
```

3. Reload nginx

4. Test again using the SSLLabs Tool

https://www.howtoforge.com/ssl-perfect-forward-secrecy-in-nginx-webserver
