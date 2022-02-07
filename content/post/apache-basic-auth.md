---
title: "Apache Basic Auth"
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, auth]
draft: false
---

```
AuthType Basic
AuthName "Development"
AuthUserFile /var/www/sites/.htpasswd
Require valid-user
```
