---
title: "Fatal Error: Call to undefined function cache_get()"
date: "2020-04-17T23:50:10+08:00"
tags: [drupal, error, fatal, fatal-error, php-syntax]
draft: "false"
---

**From CLI**
```
 drush st
```

This error is shown:
```
PHP Fatal error:  Uncaught Error: Call to undefined function cache_get() in xxxx
```

**Solution**

Is always due to php syntax error. What did you add just recently? Perhaps a semicolon is missing in settings.local.php?

Further information in https://www.drupal.org/forum/support/post-installation/2016-06-23/fatal-error-call-to-undefined-function-cache_get
