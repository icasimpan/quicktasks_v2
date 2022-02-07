---
title: "Retrieve SSH Public Key From Private Key"
date: 2020-04-02T18:36:44+08:00
tags: [ssh, private-key, public-key, retrieval, restore]
draft: false
---

```
ssh-keygen -y -f ~/.ssh/id_rsa > ~/.ssh/id_rsa.pub
```

See details in https://askubuntu.com/questions/53553/how-do-i-retrieve-the-public-key-from-a-ssh-private-key

