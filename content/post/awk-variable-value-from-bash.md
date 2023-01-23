---
title: "Awk Variable Value from Bash"
date: 2023-01-24T00:19:11+08:00
tags: [awk, text-processing]
draft: false
---

Suppose you have a bash script that wants to pass a value to an awk line.
You would do something like this:

```
awk -v today="$(date)" 'BEGIN {print today}'
```

Key above is the `-v` in awk which can be repeated as there are variables to assign. See `man awk` for details.


If you put it into the awk body, (outside BEGIN), you need to terminate it with `<<</dev/null`. Otherwise, it will wait for indefinite input.

```
#!/bin/bash

this=$1

awk -v bash_this="$this" '{print "Given by bash: " bash_this}' <<</dev/null
```

sample output of above script:
```
~$ ./bash_input_to_awk.bash here
Given by bash: here
```

CREDITS: https://www.cyberciti.biz/faq/linux-unix-appleosx-bsd-bash-passing-variables-to-awk/
