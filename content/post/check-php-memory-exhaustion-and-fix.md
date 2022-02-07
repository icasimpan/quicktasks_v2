---
title: "Checking for php memory exhaustion + possible fix"
date: 2019-09-28T00:20:25+08:00
tags: [php, memory, php-memory]
draft: false
---

```
me@web-13940:/var/log/sites/web.prod/logs/web-13940$ zgrep -c 'Allowed memory size of' php-errors.log php-errors.log-201712*
php-errors.log:11
php-errors.log-20171222.gz:4
```

```
me@web-13940:/var/log/sites/web.prod/logs/web-13940$ zgrep 'Allowed memory size of' php-errors.log* | grep -o 'request_id="[^"]*' | awk -F'"' '{print $2}' | xargs -I{} zgrep {} access.log* | awk '{print $6" "$7}' | cut -c2- | sort | uniq -c | sort -nr
      6 GET /admin/content
      3 POST /system/ajax
      3 POST /admin/content
      1 POST /views/ajax
      1 POST /admin/content?title=budget&type=resource&author=&status=All&vid=All
      1 GET /agendas/items/all
```
Conditional fix in https://docs.acquia.com/articles/conditionally-increasing-memory-limits

