---
title: "settings.php: Few Ways to Add Changes"
date: 2018-04-09T00:20:33+08:00
tags: [drupal, settings, configuration]
draft: false
---

*Method 1 (env.json)*
in drupalroot/sites/default/env.json

```
{
  "conf_dir": "/etc/drupal/site_identifier_here/default"
}

```

in /etc/drupal/site_identifier_here/default, there is then a file _globals.conf.d/globals.default.json_ with content:

```
{
  "id": "default",
  "databases": {
    "default": {
      "default": {
        "database": "yourDB",
        "username": "yourDBA",
        "password": "yourPASS",
        "host": "127.0.0.1",
        "driver": "mysql"
      }
    }
  },
  "uri": "example.com",
  "doc_root": "www",
  "chef_type": "data_bag_item",
  "data_bag": "drupal"
}

*Method 2: Referenced from settings.php*

See https://ismael.casimpan.com/quicktasks-drupal/post/settings-php-including-settings-local/

With sample settings.local.php in https://ismael.casimpan.com/quicktasks-drupal/post/settings-php-sample-settings-local/
