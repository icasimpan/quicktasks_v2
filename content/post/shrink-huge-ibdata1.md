---
title: "Shrink Huge ibdata1"
date: 2019-11-24T23:15:37+08:00
tags: [mysql, mariadb, innodb, optimization]
draft: false
---

Best way is to make one file per table and not use default which baloons to a huge file and never shrinks when some tables are removed and unused.
See https://www.thegeekstuff.com/2016/02/mysql-innodb-file-per-table

Some other reference:
* https://www.percona.com/blog/2013/08/20/why-is-the-ibdata1-file-continuously-growing-in-mysql/
* https://www.percona.com/blog/2013/09/25/how-to-reclaim-space-in-innodb-when-innodb_file_per_table-is-on/
* https://www.percona.com/blog/2014/08/21/the-mysql-ibdata1-disk-space-issue-and-big-tables-part-1/
