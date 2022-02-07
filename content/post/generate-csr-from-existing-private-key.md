---
title: "Generate CSR from Existing Private Key"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, private-key]
draft: false
---

```
openssl req -out CSR.csr -key privateKey.key -new
```
