---
title: "Updating an Debian/Ubuntu OS that is no longer supported"
date: 2019-09-30T00:20:25+08:00
tags: ["ubuntu", "debian", "unsupported", "upgrade", "linux"]
draft: false
---

In our example, we have Debian Squeeze (6.0) and it's been unsupported since Feb 2016. We can no longer install nor update the packages (of course, limited to what's was available when it was last supported) until you point it to another source...the archives.

So, in /etc/apt/sources.list, add you will see:
```
deb http://ftp.us.debian.org/debian/ squeeze main
deb-src http://ftp.us.debian.org/debian/ squeeze main
```
Replace it with:
```
deb http://archive.debian.org/debian squeeze main
deb http://archive.debian.org/debian squeeze-lts main
```
and you can now access 'apt-get' or 'dpkg' as before (but limited to what's in the archive).

You may also need to add this to /etc/apt/apt.conf (create if it doesn't exist):
```
Acquire::Check-Valid-Until false;
```
See details in https://wiki.debian.org/DebianSqueeze

