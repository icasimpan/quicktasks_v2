---
title: "gz and bz2 Not Supported by unarchive"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, compression, gz, gz2, unarchive]
draft: false
---

Encountered this issue:

```
The full traceback is:
  File "/tmp/ansible_f1UXSi/ansible_module_unarchive.py", line 151, in <module>
    from shlex import quote
 
fatal: [206.81.5.18]: FAILED! => {
    "changed": false,
    "invocation": {
        "module_args": {
            "attributes": null,
            "backup": null,
            "content": null,
            "creates": null,
            "delimiter": null,
            "dest": "/root/",
            "directory_mode": null,
            "exclude": [],
            "extra_opts": [],
            "follow": false,
            "force": null,
            "group": null,
            "keep_newer": false,
            "list_files": false,
            "mode": null,
            "owner": null,
            "regexp": null,
            "remote_src": true,
            "selevel": null,
            "serole": null,
            "setype": null,
            "seuser": null,
            "src": "/root/my-files-2019-07-23.sql.gz",
            "unsafe_writes": null,
            "validate_certs": true
        }
    },
    "msg": "Failed to find handler for \"/root/my-files-2019-07-23.sql.gz\". Make sure the required command to extract the file is installed. Command \"/bin/tar\" could not handle archive. Command \"/usr/bin/unzip\" could not handle archive."
}
```

Is unsupported per https://github.com/ansible/ansible-modules-core/issues/3241

Use the following instead:

```
command: gunzip /path/to/file.gz
```
