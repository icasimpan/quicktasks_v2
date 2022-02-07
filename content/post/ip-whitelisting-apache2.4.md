---
title: "Apache 2.4: IP Whitelisting"
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, ip, whitelisting]
draft: false
---

```
...
...
           AuthType Basic
           AuthName "Development Area"
           AuthUserFile /var/www/sites/.htpasswd
           <RequireAny>
              Require ip 19.233.95.152
              Require ip 31.169.217.174
              Require ip 33.202.255.41
              Require ip 31.175.111.184
              Require ip 51.209.11.159
              Require ip 129.162.144.55
              Require valid-user
           </RequireAny>
...
...
```
See https://stackoverflow.com/questions/10419592/htaccess-htpasswd-bypass-if-at-a-certain-ip-address

