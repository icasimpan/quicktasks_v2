---
title: "Rename An Index in Postgresql"
date: 2021-09-06T09:27:45+08:00
tags: [postgresql, guide]
draft: false
---

## Rename an Index
```
ALTER INDEX the_oldtablename_idx01 RENAME TO thenewtablename_idx01
```

NOTE: This has similar syntax for renaming primary key. The only difference noted is that for primary key, the suffix is always `_pkey`. In *index*, it's either `idxNN` or `idexNN` (where NN is a nunber, e.g. '01')
