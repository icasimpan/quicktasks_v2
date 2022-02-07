---
title: "Rsync including hidden files"
date: 2020-06-06T09:21:14+08:00
tags: [rsync, ssh, hidden, dotfiles]
draft: false
---

If you need to rsync those hidden directories or files starting with dot, do it something like below (note the trailing /)
```
rsync -avz -e ssh --progress user@source-server:/somedirA/ somedirB/
```

See https://stackoverflow.com/questions/9046749/rsync-not-synchronizing-htaccess-file
