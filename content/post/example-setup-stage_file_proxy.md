---
title: "Example Setup for stage_file_proxy"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, drush, module, stage_file_proxy]
draft: false
---

```
[me@common-dev default]$ drush pm-download stage_file_proxy
Project stage_file_proxy (7.x-1.8) downloaded to /var/www/sites/project.example.com/www/sites/all/modules/contrib/stage_file_proxy.                               [success]
[me@common-dev default]$ drush pm-enable --yes stage_file_proxy
The following module has moved within the file system: <em class="placeholder">stage_file_proxy</em>. In order to fix this, clear caches or put the module back in its [warning]
original location. For more information, see <a href="https://www.drupal.org/node/2487215">the documentation page</a>. bootstrap.inc:1143
The following extensions will be enabled: stage_file_proxy
Do you really want to continue? (y/n): y
stage_file_proxy was enabled successfully.                                                                                                                             [ok]
stage_file_proxy defines the following permissions: administer stage_file_proxy settings
[me@common-dev default]$ drush variable-set stage_file_proxy_origin "https://www.example.com"
stage_file_proxy_origin was set to "https://www.eample.com".                                                                                                [success]
```
More details from https://www.drupal.org/project/stage_file_proxy
