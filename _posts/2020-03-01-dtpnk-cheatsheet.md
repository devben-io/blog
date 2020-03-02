---
title: "dtpnk's Cheatsheet"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - bash
  - CLI
  - cheatsheet
  - arch
  - linux
  - git

header:
  teaser: /assets/images/unsplash-books-01-150.jpg
  overlay_image: /assets/images/unsplash-books-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
  actions:
    - label: "More"
      url: "/tags/#cheatsheet"
---
<!--more-->

## git

```bash
## Oneliner: commit and squash changes into last commit, rebase to master & push changes
git commit --fixup=$(git --no-pager log --format="%H" -n 1) && git rebase -i --autosquash master && git push -f


```

## Kubernetes



## Links
* 