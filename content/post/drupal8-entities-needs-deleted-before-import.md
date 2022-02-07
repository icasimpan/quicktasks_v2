---
title: "Drupal 8: Entities neeeds to be deleted before importing error"
date: 2019-09-21T00:20:25+08:00
tags: [drupal, d8, entities, configuration, cim, import, error, troubleshooting]
draft: false
---

The following was seen during configuration import (drush cim)
```
  The import failed due to the following reasons:                                                                                                                                
  Entities exist of type <em class="placeholder">Shortcut link</em> and <em class="placeholder">Shortcut set</em> <em class="placeholder">Default</em>. These entities need to   
  be deleted before importing. 
```
     
Fix by running this:
```
drush ev '\Drupal::entityManager()->getStorage("shortcut_set")->load("default")->delete();'
```

Reference: https://www.drupal.org/forum/support/post-installation/2015-12-20/problem-during-import-configuration
