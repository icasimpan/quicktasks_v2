---
title: "Pull Request via Github API"
date: 2020-09-08T23:17:11+08:00
tags: [git, version-control, github, pull-request, github-api]
draft: false
---

From the example in https://docs.github.com/en/rest/reference/pulls#create-a-pull-request, it seems quite easy:

```
curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/octocat/hello-world/pulls \
  -d '{"title":"title","head":"head","base":"base"}'
```

The above means, create a pull request with title "title" with code in branch "head" against the branch in "base" for the repo https://github.com/octocat/hello-world.git

In case you need to authenticate, add 
```
-u <user>:<GITHUB_TOKEN>
```

before the -H

```
curl \
  -X POST \
  -u your_user:DEFINED_GITHUB_TOKEN_HERE
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/octocat/hello-world/pulls \
  -d '{"title":"title","head":"head","base":"base"}'
```

You can also use a payload json file for this value:
```
-d '{"title":"title","head":"head","base":"base"}'
```

and write it as:
```
-d @payload.json
```

See https://stackoverflow.com/questions/18611903/how-to-pass-payload-via-json-file-for-curl
