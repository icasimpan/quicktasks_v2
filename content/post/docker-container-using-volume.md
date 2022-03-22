---
title: "Docker Container Using Volume"
date: 2022-03-21T00:20:25+08:00
tags: [docker, container, troubleshooting]
draft: false
---

Sometimes, you may need to know which container a volume is associated with.

Use this command:
```
docker ps -a --filter volume=VOLUME_NAME_OR_MOUNT_POINT
```

See https://stackoverflow.com/questions/42857575/how-to-determine-what-containers-use-the-docker-volume
