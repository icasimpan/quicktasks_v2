---
title: "Drupal User Blocked in D7"
date: 2020-06-16T00:20:25+08:00
tags: [drupal, user, blocked, reset, d7, d8]
draft: false
---

How to reset user after being blocked (d7 and works in D8 as well).

```
MySQL> delete from flood where identifier=<uid>;
```

To get the uid, search as follows:
```
MySQL> select uid, name from users where name like '%NameHere%'\G;
```

Details in https://www.drupal.org/node/1023440

NOTE: Observed to work as well in D8 with some adjustments to checking the `uid` which seems to be in `users_data` already.
