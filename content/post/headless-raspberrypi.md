---
title: "Headless Raspbery pi"
date: 2020-08-14T00:20:25+08:00
tags: [raspberrypi, headless, setup]
draft: false
---

Tested on a RaspberryPI 4 B 2GB.

1. Setup Raspbian OS on the disk
2. In a Mac for example, create a `wpa_supplicant.conf` in /Volumes/boot.
Just replace with your country, ssid and psk
```
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
    ssid="NETWORK-NAME"
    psk="NETWORK-PASSWORD"
}
```
3. Add blank file `ssh` to /Volumes/boot
4. Use the disk to boot the pi.

More details in https://desertbot.io/blog/headless-raspberry-pi-4-ssh-wifi-setup

Additional Info: https://www.raspberrypi.org/blog/a-security-update-for-raspbian-pixel/
