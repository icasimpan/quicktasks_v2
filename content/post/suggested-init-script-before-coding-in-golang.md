---
title: "Suggested Init Script Before Coding in Golang"
date: 2021-11-05T23:05:11+08:00
tags: [golang, init, gopath]
draft: false
---

## Suggested Init Script

The very basic variable you need to lookout for in go is the environment variable `$GOPATH`.

In Unix/Linux-based systems it is by default in ~/go.

My preference is to put it in a directory where my go code exists. So here's a short shell script I use:

```
#!/bin/bash

## Enforce calling "init.sh" from within project directory.
##
init_call_check=$(dirname $0)
if [[ "$init_call_check" != ".." ]]; then
    echo "ERROR: 'init.sh' must be called from within project directory."
    echo '       Call MUST be ../init.sh <GOPATH_PREF>'
    echo "       GOPATH_PREF defaults to 'inside'. Otherwise, use 'outside'"
    exit 1
fi

## Check user preference
user_pref=${1:-"inside_projectdir"}

## Default preferred location is inside "/path/to/code/go/<project_dir_here>"
## Otherwise, use "outside_projectdir" so GOPATH becomes "/path/to/code/go"
GOPATH_PREF='inside_projectdir'
[[ "$user_pref" =~ "outside" ]] && GOPATH_PREF='outside_projectdir'

if [[ -z $GOPATH ]]; then

    if [[ "$GOPATH_PREF" = "inside_projectdir" ]]; then
       export GOPATH=$(pwd)
       export PATH=$GOPATH:$PATH
    else
       export GOPATH=$(dirname $(pwd))
       export PATH=$GOPATH:$PATH
    fi

    echo '--------------------------------------------------'
    echo 'Go environment now defined!'
    echo "   GOPATH  => $GOPATH"
    echo "Type 'exit' to remove the Go environment variable."
    echo '--------------------------------------------------'
    bash ## Run a subshell to retain the defined environment variables above.
    echo "[NOTICE] Exited Go Environment. GOPATH unset."
    echo
else
    echo "WARNING: GOPATH already defined. Use 'exit' to redefine."
    echo "  GOPATH => $GOPATH"
    exit 1
fi
```

# High Level Structure(s)
```
/path/to/coding/go
               |
               +--- init.sh    ## this is common to projects
               +--- project1   ## project. Call init inside as ../init
               +--- project2   ## project. Call init inside as ../init
               |    ...
               +--- projectN   ## project. Call init inside as ../init
```

If there's a need for GOPATH to be outside the project directory, just say so as follows:
```
../init outside
```
