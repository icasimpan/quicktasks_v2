---
title: "Check if Windows is 64-bit Using Powershell"
date: 2020-07-12T00:20:25+08:00
tags: [powershell, windows]
draft: false
---

```
PS C:\> [Environment]::Is64BitProcess
PS C:\> [Environment]::Is64BitOperatingSystem
```

both will return "True" if you're on a 64 bit Windows. See https://stackoverflow.com/questions/31977657/determining-32-64-bit-in-powershell
