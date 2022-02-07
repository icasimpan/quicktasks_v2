---
title: "Permission denied (publickey,gssapi-keyex,gssapi-with-mic)"
date: 2020-04-02T18:36:44+08:00
tags: [ssh, keys, permission-denied, config]
draft: false
---

```
[icasimpan@icasimpan ~]$ ssh icasimpan@204.48.29.45
The authenticity of host '204.48.29.45 (204.48.29.45)' can't be established.
ECDSA key fingerprint is SHA256:/g89dBppp6ir72D3dUvHFm4de2k3NPtYKOOfNkUkFQQ.
ECDSA key fingerprint is MD5:58:41:92:ed:e1:55:52:3f:69:6a:e5:27:7a:dd:98:6a.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '204.48.29.45' (ECDSA) to the list of known hosts.
Permission denied (publickey,gssapi-keyex,gssapi-with-mic).
```
In both source and destination machine, make sure to edit /etc/ssh/ssh_config and add
```
PasswordAuthentication yes
```
Then restart sshd
