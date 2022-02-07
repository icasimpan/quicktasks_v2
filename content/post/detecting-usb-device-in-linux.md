---
title: "Detecting USB Devices in Linux"
date: 2020-08-22T00:20:25+08:00
tags: [troubleshooting, usb, detection, usb-devices, linux]
draft: false
---

I did buy a wifi donggle in Lazada but I didn't know if it can be detected in my Raspberry pi using Rasbian.
Command to use: `lsusb`.
Example:
```
root@raspberrypi:/home/pi# lsusb 
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 003: ID 148f:7601 Ralink Technology, Corp. MT7601U Wireless Adapter
Bus 001 Device 004: ID 0000:3825  
Bus 001 Device 002: ID 2109:3431 VIA Labs, Inc. Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

This one is the USB Wireless Donggle:
```
Bus 001 Device 003: ID 148f:7601 Ralink Technology, Corp. MT7601U Wireless Adapter
```

The other one that doesn't have a name is a mouse I also bought from Lazada.

If you need to explore further on USB names, there's a [USB ID Repo](http://www.linux-usb.org/usb-ids.html) and I wrote a github repo that detects and compiles changes via TravisCI: https://github.com/icasimpan/usbids.
