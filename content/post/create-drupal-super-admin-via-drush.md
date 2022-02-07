---
title: "Create drupal super admin user via drush"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, admin, drush]
draft: false
---

```
drush user-create prometadmin "letmein"
drush user-add-role super_admin prometadmin
```
