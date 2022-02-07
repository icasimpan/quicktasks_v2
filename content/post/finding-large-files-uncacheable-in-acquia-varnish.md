---
title: "Finding Large Files Uncacheable in Acquia Varnish"
date: 2020-05-18T00:20:25+08:00
tags: [drupal, acquia, varnish, cache, files, large-files]
draft: false
---

Acquia varnish cannot cache files >10MB as per https://docs.acquia.com/acquia-cloud/performance/varnish/files/

To find for those >10MB files, search from the sites/default/files:
```
find ./ -type f -size +10M -exec du -sh '{}' \; -print|grep -v ^\./| sort -n
```
