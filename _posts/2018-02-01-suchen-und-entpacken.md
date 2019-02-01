---
title: "CLI - Suchen und Entpacken"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - CLI
  - DE
excerpt: ""
header:
  teaser: /assets/images/unsplash-code-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---


```
find ./ -type f -iname "*.tar.bz2" -exec tar xvjf {} \;
```



