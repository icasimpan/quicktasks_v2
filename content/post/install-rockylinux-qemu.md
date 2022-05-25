---
title: "Install RockyLinux in Qemu"
date: 2022-05-24T00:20:25+08:00
categories: [devops]
series: [virtualization]
tags: ["qemu"]
draft: false
---

Install qemu from https://www.qemu.org/. Tested working on Windows and not on WSL

```
.\qemu-img.exe create -f qcow2 'C:\Users\icasimpan\rockyLinux.hdd' 40G
.\qemu-system-x86_64.exe -hda C:\Users\icasimpan\rockyLinux.hdd -cdrom C:\Users\icasimpan\Downloads\Rocky-8.6-x86_64-minimal.iso -boot d  -m 2G -vga std -net nic,model=virtio -net user -usbdevice tablet
```

Reference: https://computernewb.com/wiki/How_to_install_Ubuntu_16.04_in_QEMU
