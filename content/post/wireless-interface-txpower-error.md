---
title: "Wireless Interface TXPower Error"
date: 2020-08-23T00:20:25+08:00
tags: [raspberrypi, wireless-interface, txpower-error, troubleshooting]
draft: false
---

I turned-off my built-in wireless network interface using the command:
```
iwconfig wlan0 txpower off
```

Howerver, I can no longer turn-it back on. Logic says just change "off" to "on" but instead, I get this error.
```
root@raspberrypi:/home/pi# iwconfig wlan0 txpower on
Error for wireless request "Set Tx Power" (8B27) :
    GET failed on device wlan0 ; Input/output error.
```

Current status of the wireless interface looks like:
```
root@raspberrypi:/home/pi# iwconfig wlan0
wlan0     IEEE 802.11  ESSID:off/any  
          Mode:Managed  Access Point: Not-Associated   
          Retry short limit:7   RTS thr:off   Fragment thr:off
          Encryption key:off
          Power Management:on
```

This dated thread for rpi3 (mine is rpi4) https://www.raspberrypi.org/forums/viewtopic.php?f=28&t=160057 doesn't work from my end.

Then I decided to reboot the rpi4 itself. Issue solved.

*Another solution* - running the below command (note it uses "auto" instead of the assumed "on")
```
iwconfig wlan0 txpower auto
```
First attempt had the same error as using "on" but after runing it the second time, no more errors shown.
Checking on 'ifconfig' now shows the wlan0 interface.

Some useful tidbits in https://raspberrypi.stackexchange.com/questions/43720/disable-wifi-wlan0-on-pi-3
