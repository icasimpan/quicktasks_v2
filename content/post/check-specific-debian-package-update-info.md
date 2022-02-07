---
title: "Check Debian Specific Package Update Info"
date: 2019-09-30T00:20:25+08:00
tags: ["debian", "package", "deb", "linux"]
draft: false
---

```
alaa@aa-lu:~$ apt-cache policy vlc
vlc:
  Installed: 2.0.8-0ubuntu0.13.04.1
  Candidate: 2.0.8-0ubuntu0.13.04.1
  Version table:
 *** 2.0.8-0ubuntu0.13.04.1 0
        500 http://ae.archive.ubuntu.com/ubuntu/ raring-updates/universe i386 Packages
        500 http://security.ubuntu.com/ubuntu/ raring-security/universe i386 Packages
        100 /var/lib/dpkg/status
     2.0.6-1 0
        500 http://ae.archive.ubuntu.com/ubuntu/ raring/universe i386 Packages
```
See https://askubuntu.com/questions/340530/how-can-i-check-the-available-version-of-a-package-in-the-repositories

