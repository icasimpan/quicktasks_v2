---
title: "Mysql Server Has Gone Away Fix"
date: 2018-04-08T22:33:18+08:00
tags: [mysql, mariadb, error]
draft: false
---

If you see an error like the following:
```
ERROR 2006 (HY000): MySQL server has gone away
No connection. Trying to reconnect...
Connection id:    990
Current database: yourDB
```

Add the the following to /etc/my.cnf, increasing the value if error persists.

```
'max_allowed_packet=64M'
```

See https://stackoverflow.com/questions/7942154/mysql-error-2006-mysql-server-has-gone-away for reference.
