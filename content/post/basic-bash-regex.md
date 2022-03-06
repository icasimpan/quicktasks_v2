---
title: "Basic Bash Regex"
date: 2022-03-05T22:17:11+08:00
tags: [regex, bash]
draft: false
---

Basic regex operator is `=~` with basic syntax
```
[[ "string" =~ pattern ]]
```

*NOTE* pattern is not quoted, only the string.

Very basic example when checking if a variable has either values 'running' or 'exited':
```
status='running' ##  change to 'exited' and '' to see it works
if [[ "$status" =~ running|exited ]]; then
    echo "Is either running or exited"
else
    echo "Nope, I don't understand that status"
fi
```


See [stackoverflow post](https://unix.stackexchange.com/questions/340440/bash-test-what-does-do)
