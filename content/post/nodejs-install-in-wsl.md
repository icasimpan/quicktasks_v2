---
title: "NodeJS Install in WSL"
date: 2022-02-13T23:17:11+08:00
tags: [nodejs, wsl, windows, ubuntu]
draft: false
---

NodeJS 14+ is needed in WSL. Usual installation via apt in Ubuntu doesn't work.
This one works so far:
```
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs
```
