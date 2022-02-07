---
title: "Generate CSR from Existing Cert"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, cert]
draft: false
---

```
openssl x509 -x509toreq -in certificate.crt -out CSR.csr -signkey privateKey.key
```
