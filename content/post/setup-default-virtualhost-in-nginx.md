---
title: "Setup Default Virtualhost in Nginx"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, virtualhost]
draft: false
---

```
server {
 
   listen 80 default_server;
   server_name _;
 
   root /var/www/default;
 
}
```
details in https://serverfault.com/questions/527156/setting-nginx-to-catch-all-unhandled-vhosts
