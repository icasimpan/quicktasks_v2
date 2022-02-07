---
title: "Generate Self-Signed Certificate"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, self-signed-cert]
draft: false
---

```
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt
```
