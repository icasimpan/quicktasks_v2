---
title: "NMap cannot open a raw socket despite being root"
date: 2020-09-05T00:20:25+08:00
tags: [troubleshooting, ubuntu-snap, error, socket-error]
draft: false
---

If you are seeing this error:

```
~# nmap -Pn www.example.org 
Starting Nmap 7.80 ( https://nmap.org ) at 2020-09-04 20:59 UTC
Couldn't open a raw socket. Error: Permission denied (13)
```

Most probably, installation was through Ubuntu's snap as follows:

```
~# snap install nmap
nmap 7.80 from Maximiliano Bertacchini (maxiberta) installed
```

Solution is to run below command
```
# snap connect nmap:network-control
```

And re-run nmap command earlier.
