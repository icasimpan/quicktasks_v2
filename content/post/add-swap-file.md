---
title: "Add Swap File"
date: 2020-07-12T00:20:25+08:00
tags: ["linux", "swap"]
draft: false
---

```
sudo dd if=/dev/zero of=/mnt/file.swap bs=1M count=512
sudo mkswap /mnt/file.swap
sudo chmod 0600 /mnt/file.swap
sudo swapon /mnt/file.swap
echo "/mnt/file.swap none swap sw 0 0" >> /etc/fstab
```

See details in https://www.garron.me/en/linux/increase-swap-memory-linux.html 
