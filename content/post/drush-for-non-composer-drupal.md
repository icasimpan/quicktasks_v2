---
title: "Drush for non-composer drupal"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, composer, drush]
draft: false
---

```
#install composer and Drush
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
wget -O drush.phar https://github.com/drush-ops/drush-launcher/releases/download/0.6.0/drush.phar
chmod +x drush.phar
sudo mv drush.phar /usr/local/bin/drush
cd drupal
cat > composer.json<<'EOF'
{
    "require": {
        "drush/drush": "8.*"
    },
    "extra": {
        "installer-paths": {
            "core": ["type:drupal-core"]
        }
    }
}
EOF
composer install
```
Details from https://github.com/dbjpanda/digitalocean-drupal/blob/7.x/install.sh and https://github.com/drush-ops/drush-launcher/issues/33
