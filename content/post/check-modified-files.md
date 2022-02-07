---
title: "Checking Modified Files in a Commit"
date: 2020-02-19T23:17:11+08:00
tags: [git, version-control, modified-files]
draft: false
---

Get the commit-hash (e.g. of last commit)
```
git log -1
```

Show the files changed only in commit
```
git show --stat <commit-hash>
```

See details in https://stackoverflow.com/questions/424071/how-to-list-all-the-files-in-a-commit
