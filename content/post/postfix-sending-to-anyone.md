---
title: "Allow Postfix to Send Mail to Anyone"
date: 2020-03-11T00:20:25+08:00
tags: [postfix]
draft: false
---

in /etc/postfix/main.cf, change:

```
inet_interfaces = localhost
```

to
```
inet_interfaces = all
```

And restart postfix accordingly.
