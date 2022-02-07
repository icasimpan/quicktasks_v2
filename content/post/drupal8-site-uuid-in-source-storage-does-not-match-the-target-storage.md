---
title: "Drupal 8: Site UUID in source storage does not match the target storage"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, d8, uuid, configuration]
draft: false
---

*Problem*

You encountered this error when running 'drush cim':
```
Site UUID in source storage does not match the target storage.
```

As mentioned, UUID no longer match. To fix, get the UUID in config/sync directory, something like below:
```
awk '{for (I=1;I<=NF;I++) if ($I == "uuid:") {print $(I+1)};}' sites/default/config/sync/system.site.yml
```
and assuming you get this value:
```
d5835485-ed5e-433a-b782-41eca3ef7727
```

Set that to current installation as follows:
```
drush cset system.site uuid d5835485-ed5e-433a-b782-41eca3ef7727 -y
```

Rerun 'drush cim'

See details in https://web.archive.org/web/20170429231018/https://justdrupal.com/drupal-8-reinstall/

