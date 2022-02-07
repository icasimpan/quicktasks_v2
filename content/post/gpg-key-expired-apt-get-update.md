---
title: "gpg key expired when doing 'apt-get update'"
date: 2019-09-30T00:20:25+08:00
tags: ["debian", "gpg", "key", "linux"]
draft: false
---

If you're seeing something like this:
```
W: An error occurred during the signature verification. The repository is not updated and the previous index files will be used. GPG error: https://packagecloud.io/github/git-lfs/ubuntu xenial InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 6B05F25D762E3157
W: Failed to fetch https://packagecloud.io/github/git-lfs/ubuntu/dists/xenial/InRelease  The following signatures couldn't be verified because the public key is not available: NO_PUBKEY 6B05F25D762E3157
W: Some index files failed to download. They have been ignored, or old ones used instead.
```
Solution is to run
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6B05F25D762E3157
```
details in https://github.com/git-lfs/git-lfs/issues/3474
