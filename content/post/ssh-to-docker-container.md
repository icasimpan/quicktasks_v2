---
title: "SSH to Docker Container"
date: 2020-08-13T00:20:25+08:00
tags: [docker, container, ssh, troubleshooting]
draft: false
---

Check first the names of your container:
```
docker ps
```

Technically though, it's just running a shell, so run as follows:
```
docker exec -it <container-name> /bin/bash
```

In case you see this error:
```
OCI runtime exec failed: exec failed: container_linux.go:349: starting container process caused "exec: \"/bin/bash\": stat /bin/bash: no such file or directory": unknown
```

You can probe a little and check any available shell.
Run:
```
docker exec -it <container-name> ls -l /bin/
```

You may recognize a few shell like:
* /bin/ash
* /bin/sh

So use those.

Some helpful details https://phase2.github.io/devtools/common-tasks/ssh-into-a-container/
