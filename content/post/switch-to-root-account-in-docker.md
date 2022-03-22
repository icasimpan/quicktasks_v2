---
title: "Switch to root account in Docker"
date: 2022-03-21T23:17:11+08:00
tags: [docker, root-account, troubleshooting]
draft: false
---

Usually, a docker container has a way to easily switch to root account.

It can be as easy as 'su root' or even root by default when you run a shell such as 'bash' within it.

However, sometimes, it's not that easy. You need to work hard for it.

My issues where the following:
* su command won't work as it's just a symlink to busybox:
```
~ $ ls -l `which su`
lrwxrwxrwx    1 root     root            12 Oct 21  2020 /bin/su -> /bin/busybox
```
* No known root password or sudo is not possible

# Solution

1. su problem - create a copy of /bin/busybox to somewhere you can modify permissions.
```
~$ cp /bin/busybox /var/www/frontend/su       ### you're inside the container here
~$ exit                                       ### go out to host OS (e.g. Ubuntu WSL)
~$ pwd
/home/ubuntu/work/src/frontend
~$ sudo chown root:root su
~$ chmod u+s su
```

Inside the container, you should see it as follows:
```
-rwsr-xr-x    1 root     root        841288 Mar 22 11:12 su
```

2. create a fake `/etc/passwd` file
```
echo "node:x:$(id -u):$(id -g)::/home/node:/bin/sh" > /tmp/fake-passwd
echo "root:x:$0:0::/:bin/sh"                        >> /tmp/fake-passwd 
```

3. Add the password changer to Dockerfile so you know what password to use when you finally `su`:
```
+RUN echo 'root:Docker!' | chpasswd
```

4. Mount the /tmp/fake-passwd to docker-compose service or docker. In my case I have docker-compose so I just added it to the corresponding service `volumes` section
```
  node:
    user: 1000:1000
    build:
      context: .
      dockerfile: "./docker/node/${ENVIRONMENT}.Dockerfile"
    image: ${PROJECT_NAME}_node:${ENVIRONMENT}
    container_name: ${PROJECT_NAME}_node
    working_dir: /var/www/frontend
    volumes:
      - "/var/www/frontend/node_modules"
      - /tmp/fake-passwd:/etc/passwd
    volumes_from:
      - data
    environment:
      - NODE_ENV=development
      - CHOKIDAR_USEPOLLING=true
    ports:
      - "3000:3000"
```

5. Then rebuild the corresponding container (in my case, it was `node`):
```
docker-compose build node 
```

6. Now shell into the container and `su` using created version, and you know the password to root. See #3 above
```
~$ docker-compose exec node sh     ## Shell to container
~$ pwd
/var/www/frontend
~$ ./su 
Password:                          ## Input the password in #3 above
/var/www/frontend #                ## See how the prompt changes to # which means, you're now the root user.
```

Enjoy!

# References:
* https://lebenplusplus.de/2018/03/15/how-to-run-npm-install-as-non-root-from-a-docker-container
* https://linuxhandbook.com/suid-sgid-sticky-bit
