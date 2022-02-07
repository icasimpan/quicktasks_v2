---
title: "Bind Container Port to Host Port"
date: 2019-09-24T00:20:25+08:00
tags: [docker, container, bind, ports]
draft: false
---

```
docker run -d --name testOnly -p 6379:6379 redis:latest
```

NOTE: Always read the format of -p as `host:container`.
