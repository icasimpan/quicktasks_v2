---
title: "Create Drupal Admin User via Drush"
date: 2020-05-24T00:20:25+08:00
tags: [drupal, drush, user]
draft: false
---

```
## Generate drupal admin access.
##
drush user:create admin --mail="admin.NOREPLY@example.com" --password="admin"
drush user:role:add "administrator" admin
```
