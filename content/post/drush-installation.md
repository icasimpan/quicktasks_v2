---
title: "Drush Installation"
date: 2018-04-09T00:18:01+08:00
tags: [drupal, drush, installation]
draft: false
---
1. Go to your drupal root
2. composer require drush/drush

See http://docs.drush.org/en/master/install/ for details.

Then install drupal launcher -> https://github.com/drush-ops/drush-launcher
1. cd ~
2. wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/download/0.3.1/drush.phar
3. chmod ug+x drush.phar
4. sudo chown www-data:www-data drush.phar
5. sudo mv drush.phar /usr/local/bin/drush
 
Further readings in https://www.dx-experts.nl/site-specific-local-drush-and-drupal-console
