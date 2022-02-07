---
title: "Connection to Server Refused"
date: 2020-06-27T00:20:25+08:00
tags: [k8s, kubernetes, troubleshooting, kubectl, doks, managed-kubernetes]
draft: false
---

When you see similar error as below:
```
user@example:~$ kubectl get nodes
The connection to the server localhost:8080 was refused - did you specify the right host or port?
```

Check for the "$KUBECONFIG" if set and "kubectl config view" output.
Chances are, both are empty like below:
```
user@example:~$ echo $KUBECONFIG
```

```
user@example:~$ kubectl config view
apiVersion: v1
clusters: null
contexts: null
current-context: ""
kind: Config
preferences: {}
users: null
```

In this example, we're using the DOKS or DigitalOcean Managed Kubernetes.

To fix the problem:
Get the config file and set the value of "$KUBECONFIG" to it.
```
user@example:~$ export KUBECONFIG=./k8s-infra-kubeconfig.yaml 
user@example:~$ echo $KUBECONFIG
./k8s-infra-kubeconfig.yaml
```

and output of "kubectl config view" would also have something like below:
```
user@example:~$ kubectl config view
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: DATA+OMITTED
    server: https://b91642bd-a291-4200-c1ad-135ec3094be8.k8s.ondigitalocean.com
  name: do-nyc1-k8s-infra
contexts:
- context:
    cluster: do-nyc1-k8s-infra
    user: do-nyc1-k8s-infra-admin
  name: do-nyc1-k8s-infra
current-context: do-nyc1-k8s-infra
kind: Config
preferences: {}
users:
- name: do-nyc1-k8s-infra-admin
  user:
    token: d44a591ac43024737ad524ffd17039b318d21646b685a140754391ebe23dea6c
```

Going back to our earlier command that has the error, you should now see like below:
```
user@example:~$ kubectl get nodes
NAME                 STATUS   ROLES    AGE     VERSION
default-pool-9yhb2   Ready    <none>   6h40m   v1.18.3
default-pool-9yhbd   Ready    <none>   6h40m   v1.18.3
```

More troubleshooting: https://github.com/kubernetes/kubernetes/issues/50295
