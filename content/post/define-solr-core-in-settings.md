---
title: "Define Solr Core in settings.local.php"
date: 2019-09-25T00:20:25+08:00
tags: [solr, solr-core]
draft: false
---


```
$config['search_api.server.solr_events']['backend_config']['connector_config']['host'] = '68.193.132.102';
$config['search_api.server.solr_events']['backend_config']['connector_config']['port'] = '8983';
$config['search_api.server.solr_events']['backend_config']['connector_config']['core'] = 'upd_event';
$config['search_api.server.solr_news']['backend_config']['connector_config']['host'] = '68.193.132.102';
$config['search_api.server.solr_news']['backend_config']['connector_config']['port'] = '8983';
$config['search_api.server.solr_news']['backend_config']['connector_config']['core'] = 'upd_news';
$config['search_api.server.solr_search_site']['backend_config']['connector_config']['host'] = '68.193.132.102';
$config['search_api.server.solr_search_site']['backend_config']['connector_config']['port'] = '8983';
$config['search_api.server.solr_search_site']['backend_config']['connector_config']['core'] = 'upd_library';
$config['search_api.server.solr_publications']['backend_config']['connector_config']['host'] = '68.193.132.102';
$config['search_api.server.solr_publications']['backend_config']['connector_config']['port'] = '8983';
$config['search_api.server.solr_publications']['backend_config']['connector_config']['core'] = 'upd_publication';
```
As seen above, there's some config that hooks up drupal's host/port to solr core.
