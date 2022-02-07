---
title: "Remove Bad Keys From ~/.ssh/known_hosts"
date: 2020-04-02T18:36:44+08:00
tags: [ssh, keys, public-key, bad, config]
draft: false
---

Sample
```
icasimpan-local:~ icasimpan$ ssh root@99.206.157.36
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the ECDSA key sent by the remote host is
SHA256:AbJnvQd/cMEDiN0ohMp6gdmBYRhRRp6h8iOBJf0m4Zs.
Please contact your system administrator.
Add correct host key in /Users/icasimpan/.ssh/known_hosts to get rid of this message.
Offending ECDSA key in /Users/icasimpan/.ssh/known_hosts:403
ECDSA host key for 99.206.157.36 has changed and you have requested strict checking.
Host key verification failed.
```
Do it this way:
```
icasimpan-local:~ icasimpan$ ssh-keygen -f "/Users/icasimpan/.ssh/known_hosts" -R 99.206.157.36
# Host 99.206.157.36 found: line 403
/Users/icasimpan/.ssh/known_hosts updated
Original contents retained as /Users/icasimpan/.ssh/known_hosts.old
```
