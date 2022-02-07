---
title: "SSL Connect Error on Git Fetch"
date: 2020-06-12T23:17:11+08:00
tags: [git, error, troubleshooting, ssl]
draft: false
---

```
~$ git fetch
fatal: unable to access 'https://github.com/icasimpan/example.git/': SSL connect error
```

Fixed by:
```
yum update -y nss curl libcurl
```
