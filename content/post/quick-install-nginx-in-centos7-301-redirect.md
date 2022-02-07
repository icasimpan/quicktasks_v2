---
title: "Quick Install Nginx in CentOS7 + 301 Redirect"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, install, centos7, redirect]
draft: false
---

```
sudo yum install epel-release
sudo yum install nginx
sudo systemctl start nginx
...
...
edit /etc/nginx/nginx.conf
 
...
...
#add this line in bottom of 'server' block:
Redirect 301 https://your_domain_here/$request_uri;
 
sudo systemctl restart nginx
sudo systemctl enable nginx
```
