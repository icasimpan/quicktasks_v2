---
title: "Custom Site Title Per Drupal Installation (d8)"
date: 2018-04-09T00:18:01+08:00
tags: [drupal, title, config, settings]
draft: false
---

Do you have several drupal installation in a test server that you want to distinguish which is which?
Add this to settings.local.php and it will override whatever is in database.
```
     $config['system.site']['name'] = "Example Site (Fixes)";
```
