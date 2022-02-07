---
title: "Rsync via Ssh"
date: 2018-10-25T09:21:14+08:00
tags: [rsync, ssh]
draft: false
---

```
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" \
       --progress /var/www/html/example.com/docroot me@example.org:/var/www/html/example.org/
```
