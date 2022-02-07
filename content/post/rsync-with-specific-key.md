---
title: "Rsync With Specific Key"
date: 2018-10-25T09:20:07+08:00
tags: [rsync, key]
draft: false
---

```
rsync -Pav -e "ssh -i $HOME/.ssh/somekey" username@hostname:/from/dir/ /to/dir/
```
