---
title: "CLI - Renice Process and all child processes"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - CLI
  - EN
  - cpu
  - process

header:
#  teaser: /assets/images/unsplash-code-01-150.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
  
---


With this "one-liner" you can set the priority of a parent process and all it's childprocesses at one time.
<!--more-->
```
ls /proc/$(ps aux - grep <NAME-OF-PROCESS> - grep -v grep - awk '{ print $2 }')/task - xargs renice <PRIO>
```



