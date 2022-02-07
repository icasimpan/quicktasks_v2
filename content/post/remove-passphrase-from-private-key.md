---
title: "Remove Passphrase from Private Key"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, passhprase, private-key]
draft: false
---

```
openssl rsa -in privateKey.pem -out newPrivateKey.pem
```
