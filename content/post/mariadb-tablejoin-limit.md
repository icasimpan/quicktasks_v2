---
title: "MariaDB Table Join Limit"
date: 2018-10-23T22:30:18+08:00
tags: [mysql, mariadb, join, table]
draft: false
---

Maximum number of table joins is 61 as per https://stackoverflow.com/questions/23389820/what-is-the-maximum-number-of-table-joins-in-mariadb
Tested out as follows:

```
CREATE TABLE t (i INT(10) NOT NULL);
select *
from t a01 join t a02 join t a03 join t a04 join t a05 join t a06 join t a07 join t a08 join t a09 join t a10
join t a11 join t a12 join t a13 join t a14 join t a15 join t a16 join t a17 join t a18 join t a19 join t a20
join t a21 join t a22 join t a23 join t a24 join t a25 join t a26 join t a27 join t a28 join t a29 join t a30
join t a31 join t a32 join t a33 join t a34 join t a35 join t a36 join t a37 join t a38 join t a39 join t a40
join t a41 join t a42 join t a43 join t a44 join t a45 join t a46 join t a47 join t a48 join t a49 join t a50
join t a51 join t a52 join t a53 join t a54 join t a55 join t a56 join t a57 join t a58 join t a59 join t a60
join t a61 join t a62;

```

Results in error for more than 61 table used (tested on MariaDB 10.0.11):
```
ERROR 1116 (HY000): Too many tables; MariaDB can only use 61 tables in a join
```
