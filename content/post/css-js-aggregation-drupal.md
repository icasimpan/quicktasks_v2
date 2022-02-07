---
title: "CSS/JS Aggregation in Drupal"
date: 2020-09-18T00:20:25+08:00
tags: [drupal, aggregation, settings]
draft: false
---

When you're doing development, most of the time, you don't want to minify css/js.
Here's how you the respective settings:

*settings.local.php (drupal 7)*
```
$conf['preprocess_css'] = FALSE;
$conf['preprocess_js'] = FALSE;
```

*settings.local.php (drupal 8 & 9)*
```
$config['system.performance']['css']['preprocess'] = FALSE;
$config['system.performance']['js']['preprocess'] = FALSE;
```

*drush (drupal 7)*
```
drush vset preprocess_js 0 --yes
drush vset preprocess_css 0 --yes
```

*drush (drupal 8 & 9)*
```
drush -y config-set system.performance css.preprocess 0
drush -y config-set system.performance js.preprocess 0
```

See https://drupal.stackexchange.com/questions/221268/how-to-disable-aggregation-from-either-drush-or-phpmyadmin

...and https://www.drupal.org/node/1525472 for settings in drupal 7
