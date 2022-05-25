---
title: "Change Default WSL2 User"
date: 2022-05-24T23:17:11+08:00
tags: [wsl, powershell, linux, windows]
draft: false
---

In WSL2 Console, create `/etc/wsl.conf` with this contents:

```
[user]
default=username
```

Then in powershell (administrator):
```
wsl --shutdown
```

Reopen terminal and make sure default user is now changed.

Reference: https://superuser.com/questions/1566022/how-to-set-default-user-for-manually-installed-wsl-distro
