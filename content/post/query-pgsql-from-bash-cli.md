---
title: "Query Postgresql from Bash Command Line"
date: 2021-08-12T09:34:45+08:00
tags: [postgresql, db, tricks]
series: [oneliner]
draft: false
---

```
psql -c "<your_query_here>"
```

Example, to show tables list:
```
psql -c "\dt+"
```
