---
title: "Cross-check Certificate with Private Key and CSR"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, troubleshooting, cross-check]
draft: false
---

```
openssl x509 -noout -modulus -in certificate.crt | openssl md5
openssl rsa -noout -modulus -in privateKey.key | openssl md5
openssl req -noout -modulus -in CSR.csr | openssl md5
```
