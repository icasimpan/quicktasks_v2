---
title: "Check Windows Uptime"
date: 2022-02-06T23:17:12+08:00
tags: [powershell, windows]
draft: false
---

Sometimes, you need to check the uptime of a Windows machine. Here's the Powershell command for that:
```
 PS C:\> systeminfo|find "System Boot Time"
```

This was tested working under Windows 10 Pro and worth noting that it also works in the old cmd.

For other methods, see [this article](https://www.windowscentral.com/how-check-your-computer-uptime-windows-10).
