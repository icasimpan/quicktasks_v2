---
title: "Nginx: Request Entity Too Large"
date: 2020-07-10T00:20:25+08:00
tags: [nginx, webserver, troubleshooting]
draft: false
---

Solution: In server block, add "client_max_body_size" directive like the following

```
server {
    listen 8080;
    client_max_body_size 100M;
...
...
}
```

See details in https://www.cyberciti.biz/faq/linux-unix-bsd-nginx-413-request-entity-too-large/
