---
title: "Oneline AWK Two Decimal Filter"
date: 2022-09-22T22:00:25+08:00
tags: [awk, filter, oneline]
draft: false
---

```
echo 123.4567 | awk '{printf "%.2f\n", $1}'
123.457
```
