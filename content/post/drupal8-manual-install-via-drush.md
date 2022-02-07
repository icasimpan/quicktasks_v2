---
title: "Drupal8 Manual Install via Drush"
date: 2018-04-09T00:09:39+08:00
tags: [drupal, drush, install, d8]
draft: false
---

NOTE:

* Per https://www.drupal.org/project/drupal/releases/8.4.0, drupal8.4.x needs drush 8.1.12+
* Method works but has theme issue. Better to use composer method instead.

1. cd /var/www/sites/yourdrupal.com/
2. drush dl drupal-8
3. mv drupal-8.4.5 docroot
4. composer install
5. composer update
6. composer require drush/drush
7. drush si --db-url='mysql://yourDBA:yourPASS@127.0.0.1/yourDB'
 
Steps 4, 5, 6 are mandatory per site.
Some reference for drush install of drupal8 in https://drupal.stackexchange.com/questions/130680/downloading-core-via-command-line
