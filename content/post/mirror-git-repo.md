---
title: "Mirror Git Repo"
date: 2020-03-05T23:17:11+08:00
tags: [git, version-control, mirror]
draft: false
---

Get a clone of the bare repo
```
git clone --bare https://github.com/example/example-repo.git
```

Push to remote repo
```
git push --mirror https://github.com/remote/example-repo.git
```
