---
title: "Converting a Putty generated public key to OpenSSH"
date: 2020-04-05T18:36:44+08:00
tags: [ssh, keys, putty, conversion]
draft: false
---

If you see a public key like below, chances are, it's generated using PuttyGen in Windows.

```
---- BEGIN SSH2 PUBLIC KEY ----
Comment: "rsa-key-20200101"
AAAAB3NzaC1yc2EAAAABJQAAAQEArPVm4pY6eNaXFay32YHRdu96PXcwmhzGEWhK
jmNRt2qWs39vbM/ZCQ7I8aKcgZJ6r35wInWpaqOH2xE0Jzx1rbC0aY+66KnPSFXZ
WUkUK6oNFt55KbjgpGildiD4hehGHnRbNjoKWtKiOZKFVZPYn4H+oJ1qIUjfRzYn
a9ArXR0gZ9Ev1tENXdbura3fin5qx8Ng6/NkWHseSiCRRW1vgS4ErSnQhei+8pJI
l+GZnGhGgd4qDzHdoIt63yTuyPzqutgWhd3HoBahxCrcM9P+Gbo2J1as+8yYP56m
jI5Jnuq5eFRGu7FDaRbxdvj7ZOXlZleAkY4YstE0kewzfnTW+Q==
---- END SSH2 PUBLIC KEY ----
```
PuttyGen has a way to convert to OpenSSH but you can also convert it as follows:
```
ssh-keygen -i -f keyfile.pub > newkeyfile.pub
```
More info in https://stackoverflow.com/questions/2224066/how-to-convert-ssh-keypairs-generated-using-puttygenwindows-into-key-pairs-use
