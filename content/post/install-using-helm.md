---
title: "Installing Software using Helm"
date: 2020-06-28T00:20:25+08:00
tags: [k8s, kubernetes, helm]
draft: false
---

Say you want install jenkins and corresponding repo already added.

```
user@example:~$  helm install jenkins codecentric/jenkins
NAME: jenkins
LAST DEPLOYED: Sun Jun 28 09:59:52 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
************************************************************************
*                                                                      *
*                 Jenkins Helm Chart by codecentric AG                 *
*                                                                      *
************************************************************************

In case the chart was installed with the default configuration and you did not
configure an admin user, Jenkins creates one per default. The initial password
is logged and also stored in '/var/jenkins_home/secrets/initialAdminPassword'.

Use the following command to retrieve it:

export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=jenkins,app.kubernetes.io/instance=jenkins" -o jsonpath="{.items[0].metadata.name}")
kubectl exec --namespace default "$POD_NAME" cat /var/jenkins_home/secrets/initialAdminPassword


Accessing your Jenkins server:

Create port forwarding to access Jenkins at http://127.0.0.1:8080

export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=jenkins,app.kubernetes.io/instance=jenkins" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward --namespace default "$POD_NAME" 8080:8080
```

The above may need further configurations to be accessible. Assuming it's already done, you would see additional services:
```
user@example:~$ kubectl get services
NAME             TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)     AGE
jenkins-agent    ClusterIP   10.215.122.173   <none>        50000/TCP   84s
jenkins-master   ClusterIP   10.215.115.191   <none>        8080/TCP    84s
kubernetes       ClusterIP   10.215.0.1       <none>        443/TCP     28m
```

Or you can check the softwares installed via helm:
```
user@example:~$  helm list
NAME   	NAMESPACE	REVISION	UPDATED                             	STATUS  	CHART        	APP VERSION
jenkins	default  	1       	2020-06-28 09:59:52.810093 +0800 PST	deployed	jenkins-1.7.0	2.222.3    
```
