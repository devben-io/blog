---
title: "GIT - alle remote Branches holen"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - git
  - cli
---

```bash
for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done
```


