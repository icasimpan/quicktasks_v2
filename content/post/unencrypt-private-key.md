---
title: "Unencrypt Private Key"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, private-key, unencrypt]
draft: false
---

```
openssl rsa -in encrypted-private.key -out non-encrypted-private.key
Enter pass phrase for encrypted-private.key:
writing RSA key
```
See https://knowledge.digicert.com/solution/SO5292.html
