---
title: "Debian: Show package information"
date: 2019-09-30T00:20:25+08:00
tags: ["debian", "deb", "package", "linux"]
draft: false
---
```
root@jenkins3:~# apt-cache showpkg chromium-chromedriver
Package: chromium-chromedriver
Versions:
62.0.3202.62-0ubuntu0.14.04.1204 (/var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty-updates_universe_binary-amd64_Packages) (/var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_trusty-security_universe_binary-amd64_Packages)
 Description Language:
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 Description Language: en
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_i18n_Translation-en
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 
34.0.1847.116-0ubuntu2 (/var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages)
 Description Language:
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 Description Language: en
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_i18n_Translation-en
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 
 
Reverse Depends:
  chromium-chromedriver:i386,chromium-chromedriver
  chromium-chromedriver-dbg,chromium-chromedriver 51.0.2704.79-0ubuntu0.14.04.1.1121
  chromium-chromedriver:i386,chromium-chromedriver
  chromium-chromedriver-dbg,chromium-chromedriver 34.0.1847.116-0ubuntu2
Dependencies:
62.0.3202.62-0ubuntu0.14.04.1204 - libc6 (2 2.15) libfontconfig1 (2 2.9.0) libgcc1 (2 1:4.1.1) libglib2.0-0 (2 2.12.0) libnspr4 (18 2:4.9-2~) libnspr4-0d (2 1.8.0.10) libnss3 (18 2:3.13.4-2~) libnss3-1d (2 3.12.4) libstdc++6 (2 4.8.1) libx11-6 (0 (null)) chromium-browser (2 4.0.203.0~) dpkg (2 1.15.6) chromium-chromedriver:i386 (0 (null))
34.0.1847.116-0ubuntu2 - libc6 (2 2.14) libgcc1 (2 1:4.1.1) libstdc++6 (2 4.6) libx11-6 (0 (null)) libxi6 (0 (null)) chromium-browser (2 4.0.203.0~) dpkg (2 1.15.6) chromium-chromedriver:i386 (0 (null))
Provides:
62.0.3202.62-0ubuntu0.14.04.1204 -
34.0.1847.116-0ubuntu2 -
Reverse Provides:
root@jenkins3:~# apt-cache showpkg chromium-chromedriver
Package: chromium-chromedriver
Versions:
62.0.3202.62-0ubuntu0.14.04.1204 (/var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty-updates_universe_binary-amd64_Packages) (/var/lib/apt/lists/security.ubuntu.com_ubuntu_dists_trusty-security_universe_binary-amd64_Packages)
 Description Language:
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 Description Language: en
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_i18n_Translation-en
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 
34.0.1847.116-0ubuntu2 (/var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages)
 Description Language:
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_binary-amd64_Packages
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 Description Language: en
                 File: /var/lib/apt/lists/mirrors.digitalocean.com_ubuntu_dists_trusty_universe_i18n_Translation-en
                  MD5: 2e6e3c36fa55c5630ac7d648c44010d7
 
 
Reverse Depends:
  chromium-chromedriver:i386,chromium-chromedriver
  chromium-chromedriver-dbg,chromium-chromedriver 51.0.2704.79-0ubuntu0.14.04.1.1121
  chromium-chromedriver:i386,chromium-chromedriver
  chromium-chromedriver-dbg,chromium-chromedriver 34.0.1847.116-0ubuntu2
Dependencies:
62.0.3202.62-0ubuntu0.14.04.1204 - libc6 (2 2.15) libfontconfig1 (2 2.9.0) libgcc1 (2 1:4.1.1) libglib2.0-0 (2 2.12.0) libnspr4 (18 2:4.9-2~) libnspr4-0d (2 1.8.0.10) libnss3 (18 2:3.13.4-2~) libnss3-1d (2 3.12.4) libstdc++6 (2 4.8.1) libx11-6 (0 (null)) chromium-browser (2 4.0.203.0~) dpkg (2 1.15.6) chromium-chromedriver:i386 (0 (null))
34.0.1847.116-0ubuntu2 - libc6 (2 2.14) libgcc1 (2 1:4.1.1) libstdc++6 (2 4.6) libx11-6 (0 (null)) libxi6 (0 (null)) chromium-browser (2 4.0.203.0~) dpkg (2 1.15.6) chromium-chromedriver:i386 (0 (null))
Provides:
62.0.3202.62-0ubuntu0.14.04.1204 -
34.0.1847.116-0ubuntu2 -
Reverse Provides:
```
