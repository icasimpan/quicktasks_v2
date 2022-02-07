---
title: "Configure a Service to be Accessible from Outside World"
date: 2020-06-28T00:20:25+08:00
tags: [k8s, kubernetes, service, kubectl, load-balance]
draft: true
---

In https://ismael.casimpan.com/quicktasks-k8s/install-using-helm/, a service (jenkins) was installed using helm
but not yet accessible from the outside world.

To make it accessible, install the "nginx-ingress"

```
user@example:~$ helm repo add stable https://kubernetes-charts.storage.googleapis.com
"stable" has been added to your repositories


user@example:~$ helm install traffic-cop stable/nginx-ingress
NAME: traffic-cop
LAST DEPLOYED: Sun Jun 28 11:09:17 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
The nginx-ingress controller has been installed.
It may take a few minutes for the LoadBalancer IP to be available.
You can watch the status by running 'kubectl --namespace default get services -o wide -w traffic-cop-nginx-ingress-controller'

An example Ingress that makes use of the controller:

  apiVersion: extensions/v1beta1
  kind: Ingress
  metadata:
    annotations:
      kubernetes.io/ingress.class: nginx
    name: example
    namespace: foo
  spec:
    rules:
      - host: www.example.com
        http:
          paths:
            - backend:
                serviceName: exampleService
                servicePort: 80
              path: /
    # This section is only required if TLS is to be enabled for the Ingress
    tls:
        - hosts:
            - www.example.com
          secretName: example-tls

If TLS is enabled for the Ingress, a Secret containing the certificate and key must also be provided:

  apiVersion: v1
  kind: Secret
  metadata:
    name: example-tls
    namespace: foo
  data:
    tls.crt: <base64 encoded cert>
    tls.key: <base64 encoded key>
  type: kubernetes.io/tls
```

At this point, you'll see "traffic-cop" as installed by helm
```
user@example:~$ helm list
NAME        NAMESPACE REVISION  UPDATED                               STATUS    CHART                 APP VERSION
jenkins     default   1         2020-06-28 09:59:52.810093 +0800 PST  deployed  jenkins-1.7.0         2.222.3    
traffic-cop default   1         2020-06-28 11:09:17.352041 +0800 PST  deployed  nginx-ingress-1.40.1  0.32.0     
```

But on services side, two more where added:
1. traffic-cop-nginx-ingress-controller
2. traffic-cop-nginx-ingress-default-backend

Notice too taht the "controller" is "LoadBalancer" type and it has an external ip.
Here, it's shown as pending. 
```
user@example:~$ kubectl get services
NAME                                        TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)                      AGE
jenkins-agent                               ClusterIP      10.245.112.173   <none>        50000/TCP                    71m
jenkins-master                              ClusterIP      10.245.195.191   <none>        8080/TCP                     71m
kubernetes                                  ClusterIP      10.245.0.1       <none>        443/TCP                      98m
traffic-cop-nginx-ingress-controller        LoadBalancer   10.245.17.3      <pending>     80:30468/TCP,443:30032/TCP   117s
traffic-cop-nginx-ingress-default-backend   ClusterIP      10.245.48.199    <none>        80/TCP                       117s
```

Reruning the command to get the services list shows an ip.
```
user@example:~$ kubectl get services
NAME                                        TYPE           CLUSTER-IP       EXTERNAL-IP      PORT(S)                      AGE
jenkins-agent                               ClusterIP      10.245.112.173   <none>           50000/TCP                    72m
jenkins-master                              ClusterIP      10.245.195.191   <none>           8080/TCP                     72m
kubernetes                                  ClusterIP      10.245.0.1       <none>           443/TCP                      99m
traffic-cop-nginx-ingress-controller        LoadBalancer   10.245.17.3      161.35.255.139   80:30468/TCP,443:30032/TCP   3m4s
traffic-cop-nginx-ingress-default-backend   ClusterIP      10.245.48.199    <none>           80/TCP                       3m4s
```

This ip is the connection to the outside world.

Add a wildcard DNS record (e.g *.do-k8s.casimpan.com)
```
user@example:~$ dig *.do-k8s.casimpan.com

; <<>> DiG 9.10.6 <<>> *.do-k8s.casimpan.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 28893
;; flags: qr rd ra ad; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1452
;; QUESTION SECTION:
;*.do-k8s.casimpan.com.   IN  A

;; ANSWER SECTION:
*.do-k8s.casimpan.com.  300 IN  A 161.35.255.139

;; Query time: 26 msec
;; SERVER: 1.1.1.1#53(1.1.1.1)
;; WHEN: Sun Jun 28 12:25:46 PST 2020
;; MSG SIZE  rcvd: 87
```
A wildcard domain is good so there would be no need to recreate specific DNS entries later when adding more services.

At this point, this is what you will see:
```
user@example:~$ curl jenkins.do-k8s.casimpan.com;echo
default backend - 404
```


Prepare LetsEncrypt

```
user@example:~$ kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.13/deploy/manifests/00-crds.yaml
customresourcedefinition.apiextensions.k8s.io/certificaterequests.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/certificates.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/challenges.acme.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/clusterissuers.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/issuers.cert-manager.io created
customresourcedefinition.apiextensions.k8s.io/orders.acme.cert-manager.io created

user@example:~$ helm repo add jetstack https://charts.jetstack.io
"jetstack" has been added to your repositories

user@example:~$ helm upgrade --install cert-manager jetstack/cert-manager --version v0.13.1
Release "cert-manager" does not exist. Installing it now.
NAME: cert-manager
LAST DEPLOYED: Sun Jun 28 12:41:10 2020
NAMESPACE: default
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
cert-manager has been deployed successfully!

In order to begin issuing certificates, you will need to set up a ClusterIssuer
or Issuer resource (for example, by creating a 'letsencrypt-staging' issuer).

More information on the different types of issuers and how to configure them
can be found in our documentation:

https://docs.cert-manager.io/en/latest/reference/issuers.html

For information on how to configure cert-manager to automatically provision
Certificates for Ingress resources, take a look at the `ingress-shim`
documentation:

https://docs.cert-manager.io/en/latest/reference/ingress-shim.html
```

At this point, services added are as follows:

* cert-manager
* cert-manager-webhook


```
user@example:~$  kubectl get services
NAME                                        TYPE           CLUSTER-IP       EXTERNAL-IP      PORT(S)                      AGE
cert-manager                                ClusterIP      10.245.192.93    <none>           9402/TCP                     6m36s
cert-manager-webhook                        ClusterIP      10.245.104.142   <none>           443/TCP                      6m36s
jenkins-agent                               ClusterIP      10.245.112.173   <none>           50000/TCP                    168m
jenkins-master                              ClusterIP      10.245.195.191   <none>           8080/TCP                     168m
kubernetes                                  ClusterIP      10.245.0.1       <none>           443/TCP                      3h15m
traffic-cop-nginx-ingress-controller        LoadBalancer   10.245.17.3      161.35.255.139   80:30468/TCP,443:30032/TCP   98m
traffic-cop-nginx-ingress-default-backend   ClusterIP      10.245.48.199    <none>           80/TCP                       98m

```

=========== BELOW IS STILL NOT WORKING ==========
*********** Configure LetsEncrypt
*********** Check if jenkins is accessible now.

SERVICE=jenkins
PORT=80
DOMAIN_PATH=/
export DOMAIN=jenkins.do-k8s.casimpan.com
helm upgrade --install my-encryption encryption-chart
