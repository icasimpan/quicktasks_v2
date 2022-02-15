---
title: "Update Table Column Comments in Postgresql"
date: 2021-09-06T09:27:45+08:00
tags: [postgresql, guide]
draft: false
---

## Update comments on table columns
```
COMMENT ON COLUMN <table_name>.<column_name> IS '<new_comment_here>';
```
See [Stackoverflow reference](https://stackoverflow.com/questions/62279119/how-to-alter-comments-on-columns-after-renaming-table-name) and [Postgres.org reference](https://www.postgresql.org/docs/9.1/sql-comment.html)

NOTE: Comment cannot be altered or dropped.

To remove comment, set it to `NULL` as follows:
```
COMMENT ON COLUMN <table_name>.<column_name> IS NULL;
```
