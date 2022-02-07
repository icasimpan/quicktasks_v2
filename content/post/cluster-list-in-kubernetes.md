---
title: "Get Cluster List in Kubernetes"
date: 2020-06-28T00:20:25+08:00
tags: [k8s, kubernetes, cluster, kubectl]
draft: false
---

If you have a lot of kubernetes cluster, you will see the following:

```
user@example:~$ kubectl config get-contexts
CURRENT   NAME                          CLUSTER                       AUTHINFO                            NAMESPACE
*         do-nyc1-kubernetes-tutorial   do-nyc1-kubernetes-tutorial   do-nyc1-kubernetes-tutorial-admin   
          do-nyc3-infra                 do-nyc3-infra                 do-nyc3-infra-admin
          do-nyc2-devinfra              do-nyc2-devinfra              do-nyc2-devinfra-admin
```

The one with asterisk (do-nyc1-kubernetes-tutorial) is your current cluster. So "kubectl" commands without specified cluster will default to it.
