---
title: "Drupal 8: Broken Web UI"
date: 2019-09-21T00:20:25+08:00
tags: [drupal, d8, ui-ux, webui, broken, error, troubleshooting]
draft: false
---

Most probably caused by CSS/JS Aggreggation. Disable it by doing the following:

*Can edit settings.php* - add the following:
```
$config['system.performance']['css']['preprocess'] = FALSE;
$config['system.performance']['js']['preprocess'] = FALSE;
```

*In Drupal Admin*

-site-/admin/config/development/performance

Uncheck two checkboxes:
* Aggregate CSS files
* Aggregate JavaScript files

Reference: https://www.drupal.org/forum/support/post-installation/2017-04-02/disabling-caching-cssjs-aggregation
