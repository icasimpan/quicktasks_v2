---
title: "Check Logs of a Container"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, logs]
draft: false
---

```
docker logs <friendly-name|container-id>
```

You can tail it much like tailing ordinary logs:

```
docker logs -f --tail=5 <friendly-name|container-id>
```

which means: "start tailing at current last 5 entries of the logs"
