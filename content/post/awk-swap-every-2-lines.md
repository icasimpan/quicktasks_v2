---
title: "Swap Every Two Lines in Text File using Awk"
date: 2023-01-24T00:19:11+08:00
tags: [awk, text-processing]
draft: false
---

This swaps every two lines of input.

Given this `input.txt`
```
wan
tew
free
phore
```

Ouput the following:
```
tew
wan
phore
free
```

Full command to run:
```
~$ cat input.txt | awk '{
     if ((getline tmp) > 0) {
          print tmp
          print $0
     } else
          print $0
}'
```

CREDITS: https://www.math.utah.edu/docs/info/gawk_6.html
