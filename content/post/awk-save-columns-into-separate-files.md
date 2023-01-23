---
title: "Save Separate Columns Into Separate Files using Awk"
date: 2023-01-24T00:19:11+08:00
tags: [awk, text-processing]
draft: false
---

Assume that you have a column of data and you want to separate each column into it's own file.

It's relatively easy in awk.


Input is a sha256 or hash of ebooks:
``` 
~$ sha256sum *.pdf
9scac1ae26617a210e2211cce308aa2b770b08cb51f46621b13be272877cc068  ebook1.pdf
edbd3d4419878ee9ab68b211fc69e145eb776309273ab467e2f1bdc912d0252a  ebook2.pdf
```

and script is as follows:
```
~$ sha256sum *.pdf|awk '{
        for(i=1;i<=NF;i++) print $i > ("temp_hash" i)
      }'
```

It produces two file outputs (since we only have two columns.

temp_hash1 - containing the first column (or the hash
```
~$ cat temp_hash1 
9scac1ae26617a210e2211cce308aa2b770b08cb51f46621b13be272877cc068
edbd3d4419878ee9ab68b211fc69e145eb776309273ab467e2f1bdc912d0252a
```

temp_hash2 - containing the filename
```
~$ cat temp_hash2
ebook1.pdf
ebook2.pdf
```

CREDITS: https://stackoverflow.com/questions/48933100/awk-print-each-column-of-a-file-into-separate-files
