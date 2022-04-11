---
title: "Run Command from Container Instead of Locally"
date: 2021-07-29T11:29:00+08:00
tags: [docker, container, command]
draft: false
---

I encounter an issue where I don't have local composer installed but I need to run one.

Solution is to run it on the fly from docker container:
```
docker run --rm --interactive --tty --volume <directory_path_to_your_composer.json>:/app composer install
```
