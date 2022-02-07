---
title: "Check Low Voltage Indication in Raspberry PI"
date: 2020-08-17T00:20:25+08:00
tags: [raspberrypi, low-voltage, troubleshooting, vcgencmd]
draft: false
---

When a pi gets under voltage below 4.63V (+/-5%), a thunderbolt icon is shown in the monitor like in https://www.raspberrypi.org/documentation/configuration/warning-icons.md
It will then get throttled to get back to desired voltage.

From command line, here's what you can use to check:
```
vcgencmd get_throttled
```

with some important information regarding low voltage:
* 0x50000 - throttled at least once due to low voltage
* 0x50005 - currently throttled due to low voltage

Some more interesting information in https://raspberrypi.stackexchange.com/questions/57963/what-does-the-lightning-bolt-mean and https://www.raspberrypi.org/blog/thermal-testing-raspberry-pi-4
