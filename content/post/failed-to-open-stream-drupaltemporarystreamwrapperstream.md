---
title: "Failed to open stream: DrupalTemporaryStreamWrapper::stream_open"
date: "2020-04-17T23:50:10+08:00"
tags: [drupal, error, settings, tempfile, private-file]
draft: "false"
---

**From CLI**

This error is shown:
```
failed to open stream: "DrupalTemporaryStreamWrapper::stream_open" call failed file.inc:1983
```

**Solution**

Seems to be an issue with the temp file. Check "drush st" and confirm if the temp file is still accessible.


This gives some hints on how to set the "temp and private files" in drupal setttings  https://www.drupal.org/forum/support/installing-drupal/2011-03-01/failed-to-open-stream-drupaltemporarystreamwrapperstream#comment-4258986

However, my test showed using "/tmp" doesn't seem to reflected in drupal.
What works is adding the full path, something like this 

in Drupal 7

```
$conf['file_temporary_path'] = '/full-path/drupal-site/docroot/private-temp';
$conf['file_private_path']   = '/full-path/drupal-site/docroot/private-files';
```

in Drupal 8/9:
```
$config['system.file']['path']['temporary'] = '/tmp';
```
