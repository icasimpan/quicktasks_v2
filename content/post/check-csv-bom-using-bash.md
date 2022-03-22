---
title: "Check CSV BOM Using Bash"
date: 2022-03-21T00:20:25+08:00
tags: [csv, utf8, bom, bash]
draft: false
---

BOM or Byte-Order-Mark is needed by a UTF-8 CSV in order to be opened in Excel (at least for Windows).

How to check if said BOM exist using bash? See below:
```
~$ head -c3 samplefile.csv | hexdump -C
00000000  ef bb bf                                          |...|
00000003
```
