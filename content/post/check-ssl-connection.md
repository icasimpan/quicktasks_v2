---
title: "Check SSL Connection"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, troubleshooting]
draft: false
---

All the certificates (including Intermediates) should be displayed
```
openssl s_client -connect www.google.com:443
```

Web UI checking possible in https://www.sslshopper.com/ssl-checker.html
