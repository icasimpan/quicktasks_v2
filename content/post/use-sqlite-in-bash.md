---
title: "Use SQLite in Bash"
date: 2022-02-15T22:17:11+08:00
tags: [sqlite, bash]
draft: false
---

```
#!/bin/bash
sqlite3 test.db  "create table n (id INTEGER PRIMARY KEY,f TEXT,l TEXT);"
sqlite3 test.db  "insert into n (f,l) values ('john','smith');"
sqlite3 test.db  "select * from n;"
```

See [stackoverflow post](https://stackoverflow.com/questions/42245816/non-interactive-sqlite3-usage-from-bash-script)
