---
title: "Cloning Repos with Submodules"
date: 2020-02-26T23:17:11+08:00
tags: [git, version-control, submodules]
draft: false
---

Submodules is quite a pain to manage. To make it easy, just use this command:

```
git clone --recursive <repo_full_path>
```

Failure to use ```--recursive``` would mean using a lot of commands later.

See detailed git submodules commands in https://www.vogella.com/tutorials/GitSubmodules/article.html
