---
title: "Drupal8 Install via Composer"
date: 2018-04-09T00:09:39+08:00
tags: [drupal, drush, d8, composer, install]
draft: false
---

NOTE: 

* Noticed some memory issue during installation on a VM with 2GB RAM, so if it happens to you, just augment with swap file.

```
cd /var/www/sites
composer create-project drupal-composer/drupal-project:8.x yoursite.example.com --stability dev --no-interaction
../vendor/bin/drush site-install --site-name="Drupal Title Here" --db-url=mysql://yourDBA:yourPASS@localhost/yourDB --account-mail=admin@example.com --account-pass=acountPassw0RD -y
```
