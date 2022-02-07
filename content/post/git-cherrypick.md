---
title: "Git Cherry-Pick Merge"
date: 2018-11-23T06:03:11+08:00
tags: [git, version-control, cherry-pick, merge]
draft: false
---

# Cherry Picking in Git is quite easy: 

For single commit
```
git checkout <destination_branch>
git cherry-pick <hash-here>
```

See https://swsblog.stanford.edu/blog/cherry-picking-small-git-lesson

# Multiple commit

NOTE: only the commits between 'initial_commit_hash' and 'terminal_commit_hash' are merged.
```
git checkout <destination_branch>
git cherry-pick <initial_commit_hash>..<terminal_commit_hash>
```

To include the 'initial_commit_hash' and 'terminal_commit_hash', use the following:
```
git cherry-pick <initial_commit_hash>^..<terminal_commit_hash>
```

Note that conflicts would pause cherry-picking and ask to resolve the conflict.
You can then continue as follows:
```
git cherry-pick --continue
```

See details in https://medium.com/@sinhanurag/another-git-cheat-sheet-3b5a123f49e5
