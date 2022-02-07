---
title: "DB Credentials via Drush"
date: 2018-04-09T00:14:45+08:00
tags: [drupal, drush, db, credentials]
draft: false
---

Go to drupal root, then:
```
drush st --show-passwords database
```

In drush 9.7.2 (may also work for other sub-versions of drush 9), the following command should be used:
```
drush st DB
```
