---
title: "Check File Contents of a Docker Image"
date: 2022-02-02T00:20:25+08:00
tags: [docker, image, troubleshooting]
draft: false
---

When troubleshooting, you sometimes need to check the contents of a docker image.

```
docker run -it <name_of_image> sh
```

Once you're in, you can inspect specific files and its content.
