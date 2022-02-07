---
title: "Install Jenkins LTS via Ansible"
date: 2020-07-06T00:20:25+08:00
tags: [jenkins, jenkinsci, ci, install, ansible]
draft: false
---

Personally, I'd like to use other's work as much as possible in its original state.
With ansible roles, authors usually name their repos as 'ansible-role-java' but internally, it's something like 'geerlingguy.java' which is what they put in dependencies.
Now, if you simply clone as is, you will need to change the dependencies name.

This is the case with Geerlingguy's jenkins role, where I hit on errors in java due to the name of the dependencies.
To preserve Jeff Geerling's work, I had to clone this way:
```
git clone --branch 1.8.1 https://github.com/geerlingguy/ansible-role-java.git geerlingguy.java
git clone --branch 3.5.0 https://github.com/geerlingguy/ansible-role-jenkins.git geerlingguy.jenkins
```

Then, create symlinks

```
ln -s geerlingguy.java ansible-role-java
ln -s geerlingguy.jenkins ansible-role-jenkins
```

Now, playbook is (using latest LTS releases)

```
---
- name: Jenkins LTS Installer
  hosts: all
 
  vars:
    java_packages: java-1.8.0-openjdk
    jenkins_hostname: jenkins-standby.prometdev.com
    jenkins_repo_url: http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
    jenkins_repo_key_url: http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
 
  roles:
    - role: ansible-role-jenkins
      become: true
```
