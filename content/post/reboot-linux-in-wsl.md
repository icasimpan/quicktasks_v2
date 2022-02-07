---
title: "Reboot Linux under WSL"
date: 2022-02-06T23:17:11+08:00
tags: [wsl, powershell, linux, windows]
draft: false
---

Linux systemcmd or init way of rebooting will not work in a Windows Subsystem for Linux or wsl-run Linux. You need to use the Powershell command below:

```
wsl --shutdown
```

For other methods, see [this article](https://www.how2shout.com/how-to/how-to-reboot-wsl-windows-subsystem-linux-in-windows-10.html).
