---
title: "Cannot Send Email To Own Domain in Postfix"
date: 2019-09-28T00:20:25+08:00
tags: [postfix, cannot-send, own-domain, troubleshooting]
draft: false
---

1. vi /etc/postfix/main.cf
2. remove the domain

```
...
...
#mydestination = example.com, localhost.com, localhost
mydestination = localhost
...
...
```

Then restart postfix:
```
/etc/init.d/postix restart
```

See some further discussion in https://www.digitalocean.com/community/questions/why-won-t-postfix-deliver-mail-to-own-domain
