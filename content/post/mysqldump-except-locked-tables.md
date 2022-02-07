---
title: "MySQLDump Except Locked Tables"
date: 2020-06-17T23:11:25+08:00
tags: [mysql, mariadb, dump, mysqldump]
draft: false
---

MySQL will go down if locked tables are touched during dump. Use the following `mysqldump` syntax instead:
```
mysqldump --single-transaction --skip-lock-tables
```
