---
title: "Change Default Cluster in Kubernetes"
date: 2020-06-28T00:20:25+08:00
tags: [k8s, kubernetes, cluster, kubectl]
draft: false
---

If you have more than one cluster as illustrated in https://ismael.casimpan.com/quicktasks-k8s/list-nodes-in-kubernetes/, you can change it using command:
```
kubectl config use-context <cluster_name_here>
```

Use this command to verify the change:
```
kubectl config get-contexts
```
