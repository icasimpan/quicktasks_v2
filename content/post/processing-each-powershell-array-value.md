---
title: "Processing each powershell array value"
date: 2021-07-03T00:56:25+08:00
tags: [powershell, array]
draft: false
---

Using the [example in variable assignment](https://ismael.casimpan.com/quicktasks-powershell/assign-command-output-to-powershell-array/)

And you want to do something to each variable, you may do the following:
```
foreach ($i in $container_ids) {
	$i
}
```

So for instance, you want to delete all the containers:
```
foreach ($i in $container_ids) {
	docker rm $i
}
```
