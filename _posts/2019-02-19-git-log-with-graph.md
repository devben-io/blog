---
title: "GIT - colored log with graph "
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - git
  - CLI
  - HowTo
 

# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---
## Overview
Colored output of the git log with a (kind of) graph

## Prerequisite
* git

## HowTo


```bash
git log --graph --decorate --pretty=oneline --abbrev-commit
```

