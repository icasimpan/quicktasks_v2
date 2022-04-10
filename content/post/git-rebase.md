---
title: "Git Rebase"
date: 2022-04-01T06:03:11+08:00
tags: [git, version-control, rebase]
featured: true
thumbnail: "images/git_logo.png"
draft: false
---

Rebase is used in merging two or more commits into one.
Per experience, you can only rebase to an older commit.

Say, in these commits
```
~$ git log -2 --pretty=oneline
a0dd6b55000399c5f8b5f0f55286e167725e51c2 (HEAD -> v0.2.x_wip, origin/v0.2.x_wip) docktie_cli getx: Tested working implementation for #17.
fb8f1de0cf1af7b447dfc9275878c516384f3a0d docktie_cli getx: initial implementation wip for #17
```

Older one is `fb8f1de0cf1af7b447dfc9275878c516384f3a0d`

Run:
```
~$ git rebase --interactive HEAD~2
```

You'll be in an interactive mode (in an editor)
```
pick fb8f1de docktie_cli getx: Implementation for #17.
pick a0dd6b5 docktie_cli getx: Tested working implementation for #17.

# Rebase bc15f56..a0dd6b5 onto bc15f56 (2 commands)
#
# Commands:
# p, pick <commit> = use commit
# r, reword <commit> = use commit, but edit the commit message
# e, edit <commit> = use commit, but stop for amending
# s, squash <commit> = use commit, but meld into previous commit
# f, fixup <commit> = like "squash", but discard this commit's log message
# x, exec <command> = run command (the rest of the line) using shell
# b, break = stop here (continue rebase later with 'git rebase --continue')
# d, drop <commit> = remove commit
# l, label <label> = label current HEAD with a name
# t, reset <label> = reset HEAD to a label
# m, merge [-C <commit> | -c <commit>] <label> [# <oneline>]
# .       create a merge commit using the original merge commit's
# .       message (or the oneline, if no original merge commit was
# .       specified). Use -c <commit> to reword the commit message.
#
# These lines can be re-ordered; they are executed from top to bottom.
#
# If you remove a line here THAT COMMIT WILL BE LOST.
#
# However, if you remove everything, the rebase will be aborted.
#
# Note that empty commits are commented out
```

Focus on the uncommented part (those without #). 
```
pick fb8f1de docktie_cli getx: Implementation for #17.
pick a0dd6b5 docktie_cli getx: Tested working implementation for #17.
```

Change the 'pick' for the newer commit to 'fixup' like below:
```
pick fb8f1de docktie_cli getx: Implementation for #17.
fixup a0dd6b5 docktie_cli getx: Tested working implementation for #17.
```
and save

Push your commit now. If already pushed, you would need to force it: `git push -f`

More details in https://stackoverflow.com/questions/2563632/how-can-i-merge-two-commits-into-one-if-i-already-started-rebase
