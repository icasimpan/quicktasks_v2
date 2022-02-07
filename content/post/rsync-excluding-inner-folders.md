---
title: "Rsync Excluding Inner Folders"
date: 2018-10-25T09:24:00+08:00
tags: [rsync, exclude]
draft: false
---

In this example, we want to sync example.com except 'example.com/temp_uploads'
```
rsync -avz --exclude 'example.com/temp_uploads' example.com /var/www_backups
```
NOTE: 
* exclude files are always relative to current directory.
* to exclude multiple directories, just use an additional '--exclude' statement.

details in https://www.thegeekstuff.com/2011/01/rsync-exclude-files-and-folders
