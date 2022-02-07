---
title: "Drupal maintenance mode (turn-off) via drush"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, drush, maintenance]
draft: false
---

# Drupal 8
```
drush sset system.maintenance_mode FALSE
```

# Drupal 7
```
drush vset maintenance_mode 0
```
You may need to clear cache for it to work.

See details and some other options if it doesn't work in https://drupal.stackexchange.com/questions/100771/how-do-i-turn-off-maintenance-mode
