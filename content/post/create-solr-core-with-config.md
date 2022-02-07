---
title: "Create Solr Core with Config"
date: 2019-09-25T00:20:25+08:00
tags: [solr, create, solr-core]
draft: false
---

In the example below, "drupal_solr_conf" is in /var/www/sites/example.com

```
sudo su solr
cd /var/www/sites/example.com
/opt/solr/bin/solr create_core -c upd_event -d drupal_solr_conf
```
