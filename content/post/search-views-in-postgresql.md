---
title: "Search Views in Postgresql"
date: 2021-09-01T13:46:45+08:00
tags: [postgresql, psql]
draft: false
---
```
psql -c "select table_name from INFORMATION_SCHEMA.views WHERE table_schema = ANY (current_schemas(false));"
```

To filter, just use grep.

See https://dba.stackexchange.com/questions/23836/how-to-list-all-views-in-sql-in-postgresql
