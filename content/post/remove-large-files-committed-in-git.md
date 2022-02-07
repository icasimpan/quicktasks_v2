---
title: "Remove Large Files Committed in Git"
date: 2021-03-21T23:17:11+08:00
tags: [git, version-control, filter-branch]
draft: false
---

It's quite annoying when you committed large files to git specially if it's something that's something confidential.

We'll relatively easy to do that. Just use the 'filter-branch' command in git as follows:

```
git filter-branch --force --index-filter \
>   'git rm --cached --ignore-unmatch path/to/huge-file.mp4' \
>   --prune-empty --tag-name-filter cat -- --all
```

You should be seeing something like below:
```
~$ git filter-branch --force --index-filter \
>   'git rm --cached --ignore-unmatch content/sync/files/public/2020-04/Bad_Luck.mp4' \
>   --prune-empty --tag-name-filter cat -- --all
Rewrite 8dfc744d18880f14dbc8fcd09f50c4bc3ede71 (1049/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 0f576ff737e8ce14a171f82015507c2b3bb037 (1050/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a21e3fb9c9175d19bd4c95e29750c716be2074 (1051/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 0e654d3e3698d2105f5bd9e6cbd0e698be0ae1 (1052/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 442ddce74432ef175df30e944300f5fcdd6368 (1053/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite b79967130eecf210c97b6e00c780d6bf904450 (1054/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 9d3543a3aabd6a1685ed4bf874606558e1a70a (1055/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 0407170946d6581db39fe4ff9910c66754759b (1056/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 7c3a8b4894a58117915609281fd0c827fd2040 (1057/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite d1907db4a9761115c1c3fb353da04c8f83f000 (1058/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 024889a878ba161f91b8bce09fa04cf9d507ba (1059/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite f5b997c261464a1bc54990f3914066b4e11d15 (1060/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 8d43b7a91e534c1560cc435c2d80da4d63bcbf (1061/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite c87a7fd9ddb2cd1ed19d9418c5100aacac8afa (1062/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 97653d7ec90ac41c1288693c5b90cae3168cb3 (1063/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite f158c16d0b226d1f0ffa3fd8a580b780510895 (1064/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 54155b7f25fe6e12dccee4e7438045b565f909 (1065/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a38b06967c5bb31241b27dc02bb00c75536d6d (1066/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 8816c228375b5518c4622ae984b00d5372bcc1 (1067/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite c147eb135df3281eb0cbcc6710008d0978679f (1068/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a7bed9de10b6241ab0f4a4dbd4a02f9249b95e (1069/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a7d5b9ed07cff710531cca474d906b9f8d0a84 (1070/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite adeb60fee3365319144810efae70e5e2d19877 (1071/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite ad0ae718f81ac31d4bc44c762f50b6a3c26e53 (1072/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 7a7265f5f7bb321dc829052125f0a8430f4183 (1073/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 759afcfe56d66214438560d03bf088d6b7bd3a (1074/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 02c301c38e30e21e8aa26a3f2dd08ab7c6c037 (1075/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a40be7fb9d99151f2faed6d66770587c428690 (1076/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 2d0e192f9b0d811d2524ca6e78705f4d182674 (1077/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite ad49760258c5b71107bfdf807d2098f82253a4 (1078/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 2a4b4fa09185821e4f5585d5f2f0afa65c2b89 (1079/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 489c53510ac2af1ad2f4e0ed2580c04b13e295 (1080/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite b3aa3f63815d271e4ca29705d890b276ca9523 (1081/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 0197a6f89442ad150b2bd2c536e055bfc750bd (1082/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite bcefc9540046d11585c40f534240e081de3a3c (1083/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 592b26ad2e7a001408d1cd0e6f3083294ebc00 (1084/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite a10463a0359c6c1f947a247f0a10ee535db705 (1085/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 0c32dfdc1d00bb17f6d78ec026d025b5712a5b (1086/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite e7bf716df5d35a1154f1077ba570e50f342e0d (1087/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite fa9124b32a60491ad5f2696e95b064091d278a (1088/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite aa22e9e111b2f618491c6e5e005075aad2e368 (1089/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 493f68b85d860a1e83739b64d610afaf8bc33a (1090/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'
Rewrite 3dd782281c1f8b13c2aca1a4b9708be94d6875 (1091/1091)rm 'content/sync/files/public/2020-04/Bad_Luck.mp4'

Ref 'refs/heads/feature-MOV2020-40-remove-unpublished-warstunt-practice-content-v1.0.0' was rewritten
Ref 'refs/heads/master' was rewritten
Ref 'refs/heads/release-v1.0.0' was rewritten
Ref 'refs/heads/release-v1.0.0-interactive-fix-master' was rewritten
Ref 'refs/heads/release-v1.0.0-interactive-fix-master-may29-sans-large-files' was rewritten
Ref 'refs/remotes/origin/master' was rewritten
Ref 'refs/remotes/origin/feature-MOV2020-40-remove-unpublished-warstunt-practice-content-v1.0.0' was rewritten
WARNING: Ref 'refs/remotes/origin/master' is unchanged
Ref 'refs/remotes/origin/release-v1.0.0-interactive-fix-master' was rewritten
Ref 'refs/remotes/origin/release-v1.0.0-interactive-fix-master-may29' was rewritten
Ref 'refs/remotes/internal/dependabot/npm_and_yarn/web/core/js-yaml-3.13.1' was rewritten
Ref 'refs/remotes/internal/dependabot/npm_and_yarn/web/core/lodash.mergewith-4.6.2' was rewritten
Ref 'refs/remotes/internal/dependabot/npm_and_yarn/web/core/mixin-deep-1.3.2' was rewritten
Ref 'refs/remotes/internal/dependabot/npm_and_yarn/web/core/stringstream-0.0.6' was rewritten
Ref 'refs/remotes/internal/develop' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-179-prosepage' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-173-warstunts' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-171-add-warstunts-blocks' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-274-drushfix' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-272-faq' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-371-courthouse' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-370-login-menu-fix' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-93-classes-cleanup' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-93-nav' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-93-submenu' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-966-form-faq-title-does-not-render' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-983-core-security-updates' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-992-handbookpage' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-97-dockersetup' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-clean-git' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-clean-git-2' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-clean-git-3' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-clean-git-4' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-clean-git-5' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-exclude-contrib-modules' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-exclude-contrib-modules-2' was rewritten
Ref 'refs/remotes/internal/feature-INTERNAL-2710-exclude-contrib-modules-3' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020B-2-implement-search-api' was rewritten
WARNING: Ref 'refs/remotes/internal/feature-MOV2020B-3-release-v1.0.0-revisited' is unchanged
Ref 'refs/remotes/internal/feature-MOV2020-25-create-blockviews-rss-feed-in-ecf-live-feed-page' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-40-warstunts-pane' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-40-warstunts-pane-update' was rewritten
Ref 'refs/remotes/internal/feature-MOV2020-44-sitemap' was rewritten
WARNING: Ref 'refs/remotes/internal/master' is unchanged
Ref 'refs/remotes/internal/master-MOV2020-may-2020' was rewritten
Ref 'refs/remotes/internal/release-v1.0.0' was rewritten
Ref 'refs/remotes/internal/release-v1.0.0-interactive-fix-master-may29-sans-large-files' was rewritten
Ref 'refs/tags/v1.0.0' was rewritten
```

See details in https://www.deployhq.com/git/faqs/removing-large-files-from-git-history
