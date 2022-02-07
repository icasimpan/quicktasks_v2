---
title: "Slow Query Logs"
date: 2019-02-12T22:47:36+08:00
tags: [mysql, mariadb, logs, slow, slow-query]
draft: false
---

```
slow_query_log = 1
long_query_time = 1
slow_query_log_file = /var/log/mariadb/slow-query.log
log_queries_not_using_indexes
```

See details in https://www.cyberciti.biz/faq/how-to-set-and-enable-mariadb-slow-query-log-linux-unix/
