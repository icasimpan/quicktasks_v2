---
title: "Unix2Dows using Powershell"
date: 2020-07-12T00:20:25+08:00
tags: [powershell, unix2dos]
draft: false
---

```
get-content <filename> |% {$_.replace("`n", "`r`n")} | out-file -filepath <new filename>
```
More explanation in https://sus42.wordpress.com/2013/01/21/unix2dos-using-powershell/
