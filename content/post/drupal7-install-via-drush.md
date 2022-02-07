---
title: "Drupal7 install via drush"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, install, d7, drush]
draft: false
---

```
cd /var/www/sites
drush dl drupal-7 --destination=yoursite.example.com --drupal-project-rename=www -y
cd yoursite.example.com/www
drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://myDBA:myDBPASS@localhost/myDB -y

```
See http://www.coderintherye.com/install-drupal-7-using-drush
