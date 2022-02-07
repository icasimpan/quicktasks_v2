---
title: "Assign Command Output to Powershell Array"
date: 2021-07-03T00:55:25+08:00
tags: [powershell, array, variable-assignment]
draft: false
---

From powershell CLI;
```
$container_ids=docker ps -qa
$container_ids
```

In the command above, 1st line does the assignment. 2nd line prints the values.
You will then have an output such as the following:
```
6fc00bc6a
ba3c76ca3
a9b4e46eb
```
