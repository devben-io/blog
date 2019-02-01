---
#title: ""
excerpt_separator: "<!--more-->"
categories:
tags:
  - 
  - 
---


# GIT - alle remote Branches holen

    for remote in `git branch -r`; do git branch --track ${remote#origin/} $remote; done



