---
title: "GIT - Subtrees"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - git
  - CLI
  - links
---




## Setup

```
git remote add <MY-SUBTREE> git@github.com:<USER>/<SUBPOJECT>.git
git subtree add --prefix=<MY-SUBTREE>/ <MY-SUBTREE> master
```

## Pull changes from sub-repo

```
git subtree pull --prefix=<MY-SUBTREE> <MY-SUBTREE> master
```

## Push changes to sub-repo

```
 
```

## Links:

* [https://medium.com/@v/git-subtrees-a-tutorial-6ff568381844](https://web.archive.org/web/20170211181913/https://medium.com/@v/git-subtrees-a-tutorial-6ff568381844)



