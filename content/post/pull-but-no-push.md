---
title: "Pull but no push in git"
date: 2018-04-08T23:17:11+08:00
tags: [git, version-control, pull, no-push, configure]
draft: false
---

```
$ git remote set-url --push origin no-pushing
$ git push
fatal: 'no-pushing' does not appear to be a git repository
fatal: The remote end hung up unexpectedly
```
See https://stackoverflow.com/questions/7556155/git-set-up-a-fetch-only-remote
