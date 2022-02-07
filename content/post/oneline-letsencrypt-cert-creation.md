---
title: "Oneline Letsencrypt Cert Creation"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, letsencrypt, oneline]
draft: false
---

```
certbot --apache -d sub1.example.com -d sub2.example.com --agree-tos -m you@example.com --redirect
```

If you're on nginx, use `--nginx`
