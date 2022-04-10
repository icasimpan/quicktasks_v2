---
title: "Git with Latest Commit Log Only"
date: 2020-05-26T23:17:11+08:00
tags: [git, version-control, depth, save-space]
thumbnail: "images/git_logo.png"
draft: false
---

In some situations, you only need the latest commit log, saving space in the process.
You have to do it as follows:
```
git clone --depth=1 REPO
```
