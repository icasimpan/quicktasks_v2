---
title: "Pathspec error on tag checkout"
date: 2018-04-08T23:17:11+08:00
tags: [git, version-control, checkout, pathspec]
draft: false
---

When you see error such as this
```
bash-4.1$ git checkout Brick_Release_2018-06-19
error: pathspec 'Brick_Release_2018-06-19' did not match any file(s) known to git.
```

'git fetch' first and retry to checkout. If it still fails, ensure you're using the correct branch name.
