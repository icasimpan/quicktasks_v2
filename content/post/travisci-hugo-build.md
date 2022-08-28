---
title: "TravisCI for Hugo Build"
date: 2022-08-28T10:04:00+08:00
tags: [ci, travisci, hugo]
draft: false
---

Here's the TravisCI yml file I used while this site was still with TravisCI.

It gets the hugo specific version, build the site and commit + push to `gh-pages`.

Just adapt it to your situation and enjoy!

```
language: python

env:
  global:
  - USER="icasimpan"
  - EMAIL="deploy@travis-ci.com"
  - DEPLOYMENT_USER="traviscibot"
  - REPO="quicktasks"
  - BUILD_DIR="public"
  - GH_REPO="github.com/${USER}/${REPO}.git"
  - HUGO_VERSION="0.96.0"
  - HUGO_INSTALLER_URL="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb"
  - GH_PUBLISH_BRANCH='gh-pages'

## Force commit to 'gh-pages' the built hugo site
after_success:
  - MESSAGE='Auto-built and commit via Travis CI.'
  - ls -l
  - mv ${BUILD_DIR} ~/ || exit 1
  - cd ~/${BUILD_DIR}
  - git init
  - git add .
  - git config user.email ${EMAIL}
  - git config user.name ${DEPLOYMENT_USER}
  - git commit -m "${MESSAGE}"
  - git checkout -b ${GH_PUBLISH_BRANCH}
  - git push "https://${GITHUB_TOKEN}@${GH_REPO}" ${GH_PUBLISH_BRANCH} -f

install:
    - wget ${HUGO_INSTALLER_URL}
    - sudo dpkg -i hugo*.deb
    - pip install Pygments

script:
    - hugo -s ./
```
