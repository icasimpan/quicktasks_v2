---
title: "PHP Class 'DOMDocument' not found"
date: 2019-09-28T00:20:25+08:00
tags: [php, domdocument, not-found]
draft: false
---
Sample error
```
[Wed Jan 10 14:56:38.031846 2018] [:error] [pid 9378] [client 115.85.11.98:23443] PHP Fatal error:  Class 'DOMDocument' not found in /var/www/sites/site.example.com/docroot/core/lib/Drupal/Component/Utility/Html.php on line 286
```
Solution:
```
apt-get install php5.6-dom
```
See details in https://stackoverflow.com/questions/14395239/class-domdocument-not-found
