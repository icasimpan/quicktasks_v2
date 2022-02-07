---
title: "Show Table Sizes"
date: 2020-01-21T23:17:11+08:00
tags: [mysql, mariadb, table, sizes]
draft: false
---

Use the query below and replace "database_name" with the correct db name.
```
SELECT table_name AS "Table",
ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM information_schema.TABLES
WHERE table_schema = "database_name"
ORDER BY (data_length + index_length) DESC;
```
