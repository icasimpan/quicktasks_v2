---
title: "Source Only Bash Script"
date: 2021-08-12T09:10:45+08:00
tags: [bash, tricks]
draft: false
---

In some cases, you may need to import the existing environments in bash.
Use the following at the top of your script.

```
if [ "${BASH_SOURCE[0]}" -ef "$0" ]
then
    echo "Hey, you should source this script, not execute it!"
    exit 1
fi
```
See details in https://unix.stackexchange.com/questions/424492/how-to-define-a-shell-script-to-be-sourced-not-run/424498
