---
title: "Telling git To Use Specific Private Key"
date: 2020-05-29T23:17:11+08:00
categories: [devops]
series: [version-control]
tags: [git, public-key]
thumbnail: "images/git_logo.png"
draft: false
---

Sometimes, you need to use specific keys. To do it, use ssh config, something like below in ~/.ssh/config
```
host github.com
 HostName github.com
 IdentityFile ~/.ssh/id_rsa_github
 User git
```

See details in https://superuser.com/questions/232373/how-to-tell-git-which-private-key-to-use
