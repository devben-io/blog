---
title: "GIT - autosign commits with GPG key"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - git
  - CLI
  - gpg
  - security

# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---

## get GPG key ID
```bash
gpg --list-keys
```


## global
set gpg key for signing
```bash
git config --global user.signingkey <GPG-KEY-ID>

e.g.
git config --global user.signingkey F2C7AB2
```

configure autosign
```bash
git config –-global commit.gpgsign true
```

## Links
* https://docs.gitlab.com/ee/user/project/repository/gpg_signed_commits/
* https://pbspro.atlassian.net/wiki/spaces/DG/pages/39419906/Signing+Your+Git+Commits
* https://developers.yubico.com/PGP/Git_signing.html