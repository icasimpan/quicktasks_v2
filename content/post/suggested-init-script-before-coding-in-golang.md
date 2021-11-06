---
title: "Suggested Init Script Before Coding in Golang"
date: 2021-11-05T23:05:11+08:00
tags: [golang, init, gopath]
draft: false
---

The very basic variable you need to lookout for in go is the environment variable `$GOPATH`. In Unix/Linux-based systems it is by default in ~/go.
My preference is to put it in a directory where my go code exists. So here's a short shell script I use:

```
#!/bin/bash

if [[ -z $GOPATH ]]; then
    export GOPATH=$(pwd)
    export PATH=$GOPATH/bin:$PATH
   
    echo '--------------------------------------------------------'
    echo 'GoLang environment now defined!' 
    echo "   GOPATH  => $GOPATH"
    echo "Type 'exit' to remove the GoLang environment variables."
    echo '--------------------------------------------------------'
    bash ## Run a subshell to retain the defined environment variables above.
else
    echo "WARNING: Your GOPATH is already defined. Use 'exit' if you need to redefine it."
    echo "  GOPATH => $GOPATH"
    exit 1
fi
```
