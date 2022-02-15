---
title: "Rename Primary Key in Postgresql"
date: 2021-09-06T09:26:45+08:00
tags: [postgresql, guide]
draft: false
---

## Rename a Primary Key
```
ALTER INDEX the_oldtablename_pkey RENAME TO thenewtablename_pkey
```
