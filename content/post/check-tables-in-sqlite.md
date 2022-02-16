---
title: "Check Tables in SQLite"
date: 2022-02-15T23:17:11+08:00
tags: [sqlite, database]
draft: false
---

# Open a database
```
sqlite> .open test.db
```

# Show tables
```
sqlite>.table
n
```
Shows that there is only 1 table named `n`.

# Check table schema 
```
sqlite> .schema
CREATE TABLE n (id INTEGER PRIMARY KEY,f TEXT,l TEXT);
```

# Check contents of a table
It's just the usual sql query commands as expected
```
sqlite> select * from n;
1|john|smith
```

# Quit the sqlite command prompt
```
sqlite> .quite
```

Check for other command not covered above in [sqlite.org website](https://www.sqlite.org/cli.html)
