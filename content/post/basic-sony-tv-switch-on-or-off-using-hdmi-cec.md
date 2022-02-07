---
title: "Basic Sony TV switch on or Off using HDMI-CEC"
date: 2020-08-15T00:20:25+08:00
tags: [raspberrypi, hdmi-cec, tv]
draft: false
---

Install needed package:
```
sudo apt install cec-utils
```

Check connected devices
```
pi@raspberrypi:~ $ echo 'scan' | cec-client -s -d 1
opening a connection to the CEC adapter...
requesting CEC bus information ...
CEC bus information
===================
device #0: TV
address:       0.0.0.0
active source: no
vendor:        Sony
osd string:    TV
CEC version:   1.4
power status:  on
language:      eng


device #1: Recorder 1
address:       3.0.0.0
active source: no
vendor:        Pulse Eight
osd string:    CECTester
CEC version:   1.4
power status:  on
language:      eng
```

From the above, the Sony TV has address `0.0.0.0`.

Turn-on:
```
echo 'on 0.0.0.0' | cec-client -s d 1
```

Turn-off:
```
echo 'standby 0.0.0.0' | cec-client -s d 1
```

Get status:
```
echo 'pow 0.0.0.0' | cec-client -s d 1
```

Explore:
```
echo 'h' | cec-client -s -d 1
```

See details in https://pimylifeup.com/raspberrypi-hdmi-cec/
