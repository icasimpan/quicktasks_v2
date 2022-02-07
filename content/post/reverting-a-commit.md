---
title: "Reverting a commit"
date: 2018-04-08T23:17:11+08:00
tags: [git, version-control, revert]
draft: false
---

Scenario: A PR has been merged and further tests found out that it breaks the build. What do you do?
```
git checkout -b to-revert-commits
git revert <sha-to-remove>
git push -u origin to-revert-commits
 
## create a Pull Request and have it reviewed and merged by others.
```
