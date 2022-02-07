---
title: "Apache HSTS"
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, sslcert, hsts]
draft: false
---

When a user visits your website, the above header will load first and the expiration time is 2 years (63072000 in seconds).

```
# Optionally load the headers module:
LoadModule headers_module modules/mod_headers.so
<VirtualHost 67.89.123.45:443>
Header always set Strict-Transport-Security “max-age=63072000; includeSubdomains;”
</VirtualHost>
...
...
...
<VirtualHost *:80>
[…]
ServerName example.com
Redirect permanent / https://example.com/
</VirtualHost>
```
More details in https://medium.com/@sslsecurity/how-to-enable-hsts-on-apache-nginx-and-lighttpd-8b0c64155911

