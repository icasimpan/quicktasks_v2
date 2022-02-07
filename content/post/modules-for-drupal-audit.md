---
title: "Modules for Drupal Audit"
date: 2020-09-05T00:20:25+08:00
tags: [drupal, audit, reports ]
draft: false
---

The following modules are needed:
```
drush en site_audit -y
drush en hacked -y
drush en diff -y
drush en seo_checklist -y
drush en security_review -y
drush en unused_modules -y
```

* All of the resulting reports will be in Admin > Reports.
* Exception is "Unused Modules" where you need to go to Admin > Configuration > Development
