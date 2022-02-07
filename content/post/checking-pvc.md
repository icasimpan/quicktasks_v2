---
title: "Checking PersistentVolumeClaims"
date: 2020-06-28T00:20:25+08:00
tags: [k8s, kubernetes, disk, pvc]
draft: false
---

```
user@example:~$ kubectl get pvc --all-namespaces
NAMESPACE           NAME                STATUS   VOLUME                                     CAPACITY   ACCESS MODES   STORAGECLASS       AGE
testing-icasimpan-com   vol-mysql-mysql-0   Bound    pvc-bd199911-e0e5-4327-885d-4902a599ebe2   10Gi       RWO            do-block-storage   12m
```
