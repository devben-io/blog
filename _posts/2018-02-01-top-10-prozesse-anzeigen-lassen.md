---
title: "CLI - Top 10 Prozesse anzeigen lassen"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - bash
  - CLI
  - DE

header:
  teaser: /assets/images/unsplash-code-01-150.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---



die 10 Prozesse mit der meisten CPU-Load anzeigen lassen (sortiert)

```
ps -Ao user,uid,comm,pid,pcpu,tty --sort=-pcpu - head -n 10
```
<!--more-->


