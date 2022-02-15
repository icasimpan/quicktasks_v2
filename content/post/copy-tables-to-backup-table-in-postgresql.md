---
title: "Copy Tables to Backup Tables in Postgresql"
date: 2021-09-06T09:28:45+08:00
tags: [postgresql, guide]
draft: false
---


## Copy tables to an `_old` as backup
```
CREATE TABLE new_table AS
TABLE existing_table;
```
See details in https://www.postgresqltutorial.com/postgresql-copy-table/
