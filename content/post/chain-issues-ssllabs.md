---
title: "ssllabs.com test says that there's chain issues (Incorrect order, Extra certs)"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, chain-issue, troubleshooting]
draft: false
---

This could be an incorrect use of certificates. Make sure to use the following (translate to nginx if you're not using apache)
```
SSLCertificateFile /etc/letsencrypt/live/example.com/cert.pem
SSLCertificateKeyFile /etc/letsencrypt/live/example.com/privkey.pem
Include /etc/letsencrypt/options-ssl-apache.conf
SSLCertificateChainFile /etc/letsencrypt/live/example.com/chain.pem
```
In my case, the issue was on SSLCertificateChainFile. Instead of using "chain.pem", I incorrectly used "fullchain.pem".
