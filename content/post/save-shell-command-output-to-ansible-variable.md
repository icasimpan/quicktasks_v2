---
title: "Save shell command output to ansible variable"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, shell, variable]
draft: false
---

Test playbook:
```
[root@lampp lampp]# cat test.yml
---
- name: LAMPP Dev (MySQL/CentOS7)
  hosts: 127.0.0.1
  connection: local
  become: true
 
  tasks:
    - name: Get the mysql root default password
      command: awk '/temporary password/ {print $NF}' /var/log/mysqld.log
      register: command_output
 
    - set_fact:
        default_mysqlroot_password: "{{ command_output.stdout }}"
 
    ## NOTE: debug line below is only to show output in ansible-playbook run
    - debug: msg="{{ default_mysqlroot_password }}"```
```


Output
```
[root@lampp lampp]# ansible-playbook test.yml
 [WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
 
 
PLAY [LAMPP Dev (MySQL/CentOS7)] ****************************************************************************************************************
 
TASK [Gathering Facts] *********************************************************************************************************************************
ok: [127.0.0.1]
 
TASK [Get the mysql root default password] *************************************************************************************************************
changed: [127.0.0.1]
 
TASK [set_fact] ****************************************************************************************************************************************
ok: [127.0.0.1]
 
TASK [debug] *******************************************************************************************************************************************
ok: [127.0.0.1] => {
    "msg": "712xa1dl"
}
 
PLAY RECAP *********************************************************************************************************************************************
127.0.0.1                  : ok=4    changed=1    unreachable=0    failed=0
```

Then store content as fact
```
- set_fact:
    string_to_echo: "{{ command_output.stdout }}"
```
More details in https://stackoverflow.com/questions/36059804/ansible-store-commands-stdout-in-new-variable
