---
title: "Basic Wordpress Setup"
date: 2019-09-28T23:17:11+08:00
tags: [wordpress, basic, setup]
draft: false
---

```
cd /path/to/wordpress/docroot
wp-cli db export ../backups/example.org_prodDB-icasimpan-2019.02.07.sql

## On new SITE (example.net)
cd /path/to/new-wordpress/docroot
## update 'wp-config.php' if needed
wp-cli db clean
wp-cli db import /path/to/wordpress/docroot/backups/site_prodDB-icasimpan-2019.02.07.sql
rsync -avz /path/to/wordpress/docroot/wp-content/ /path/to/new-wordpress/docroot/wp-content/
wp-cli search-replace example.org example.net ## PUT '--dry-run' to test first
```
