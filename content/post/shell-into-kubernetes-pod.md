---
title: "Shell into Kubernetes Pod"
date: 2020-08-19T00:20:25+08:00
tags: [k8s, kubernetes, shell, ssh, pod]
draft: false
---

Syntax:
```
kubectl exec --stdin --tty <pod_name> -- /bin/bash
```

Example, with the following pods
```
me@example:~$ kubectl get pod
NAME                                                        READY   STATUS    RESTARTS   AGE
cert-manager-cainjector-68c88cc858-c2rhx                    1/1     Running   0          109m
cert-manager-d76d644df-pgqn9                                1/1     Running   0          109m
cert-manager-webhook-6dd68c6fbc-rzcln                       1/1     Running   0          109m
my-first-vanilla-drupal-6f6dd66b94-xldj7                    1/1     Running   0          108m
my-first-vanilla-drupal-mariadb-0                           1/1     Running   0          108m
traffic-cop-nginx-ingress-controller-5d685cfd59-pjfdg       1/1     Running   0          144m
traffic-cop-nginx-ingress-default-backend-55f6bcb48-brg6b   1/1     Running   0          144m
```

Run this to go to the drupal pod `my-first-vanilla-drupal-6f6dd66b94-xldj7`

```
kubectl exec --stdin --tty my-first-vanilla-drupal-6f6dd66b94-xldj7 -- /bin/bash
```

It's just like any docker container or linux machine when you're in:
```
me@example:~$ kubectl exec --stdin --tty my-first-vanilla-drupal-6f6dd66b94-xldj7 -- /bin/bash
I have no name!@my-first-vanilla-drupal-6f6dd66b94-xldj7:/$ ls
bin  bitnami  boot  dev  etc  home  lib  lib64  media  mnt  opt  post-init.d  post-init.sh  proc  root  run  sbin  srv  sys  tmp  usr  var
I have no name!@my-first-vanilla-drupal-6f6dd66b94-xldj7:/$ ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
1001         1  0.0  2.0 298024 41036 ?        Ss   18:19   0:00 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       189  0.0  1.6 300912 34116 ?        S    18:20   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       190  0.0  2.6 302344 53684 ?        S    18:20   0:05 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       191  0.0  1.7 300912 35488 ?        S    18:20   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       192  0.0  2.2 300932 45772 ?        S    18:20   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       193  0.0  1.6 300896 33880 ?        S    18:20   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       194  0.0  1.6 300912 34220 ?        S    18:20   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       195  0.0  1.7 300896 35356 ?        S    18:24   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       196  0.0  1.6 300808 34028 ?        S    18:25   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       197  0.0  2.3 301072 47032 ?        S    18:25   0:02 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       198  0.0  2.5 301280 51712 ?        S    18:25   0:03 /opt/bitnami/apache/bin/httpd -f /opt/bitnami/apache/conf/httpd.conf -D FOREGROUND
1001       199  0.0  0.1   4004  3324 pts/0    Ss   20:10   0:00 /bin/bash
1001       205  0.0  0.1   7644  2716 pts/0    R+   20:10   0:00 ps aux
I have no name!@my-first-vanilla-drupal-6f6dd66b94-xldj7:/$ 
```

For those without shell, you would see an error like:
```
me@example:~$ kubectl exec --stdin --tty cert-manager-cainjector-68c88cc858-c2rhx -- /bin/bash
OCI runtime exec failed: exec failed: container_linux.go:349: starting container process caused "exec: \"/bin/bash\": stat /bin/bash: no such file or directory": unknown
command terminated with exit code 126
```

More details in https://kubernetes.io/docs/tasks/debug-application-cluster/get-shell-running-container/
