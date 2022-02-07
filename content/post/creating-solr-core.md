---
title: "Creating Solr Core"
date: 2019-09-25T00:20:25+08:00
tags: [solr, solr-core]
draft: false
---

```
icasimpan@example.local:/opt/solr/bin$ sudo su solr -s /bin/bash
solr@example.local:/opt/solr-6.6.2/bin$ /opt/solr/bin/solr create -c sample -p 8983
 
Copying configuration to new core instance directory:
/var/solr/data/sample
 
Creating new core 'sample' using command:
http://localhost:8983/solr/admin/cores?action=CREATE&name=cmoge&instanceDir=cmoge
 
{
  "responseHeader":{
    "status":0,
    "QTime":686},
  "core":"cmoge"}
```
Then reload from the Web UI in https://example.local:8983/solr and you have the core running.
